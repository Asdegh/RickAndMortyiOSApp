//
//  Extensions.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 24.01.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

extension UIDevice {
	static let isiPhone = UIDevice.current.userInterfaceIdiom == .phone
}
