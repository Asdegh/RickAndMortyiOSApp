// https://youtu.be/-eK-DNoOkTU // Part 12
//  RMImageLoader.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 19.02.2023.
//
// And also instead of using NSCache, we can use third party library called SDWebImage for handling all this stuff
import Foundation

final class RMImageLoader {
	static let shared = RMImageLoader()
	
	private var imageDataCache = NSCache<NSString, NSData>()
	
	private init() {}
	
	/// Get image content with URL
	/// - Parameters:
	///   - url: Source url
	///   - completion: Callback
	public func downloadImage(_ url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
		let key = url.absoluteString as NSString
		if let data = imageDataCache.object(forKey: key) {
			// print("Reading from cache: \(key)")
			completion(.success(data as Data)) // NSData == Data | NSString == String
			return
		}
		
		let request = URLRequest(url: url)
		let task = URLSession.shared.dataTask(with: request) { [weak self] data, _, error in
			guard let data = data, error == nil else {
				completion(.failure(error ?? URLError(.badServerResponse)))
				return
			}
			
			let value = data as NSData
			self?.imageDataCache.setObject(value, forKey: key)
			completion(.success(data))
		}
		task.resume()
	}
}
