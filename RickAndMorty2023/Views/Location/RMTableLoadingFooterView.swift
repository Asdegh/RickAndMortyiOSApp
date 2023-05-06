//
//  RMTableLoadingFooterView.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 05.05.2023.
//

import UIKit

final class RMTableLoadingFooterView: UIView {

	private let spinner: UIActivityIndicatorView = {
		let spinner = UIActivityIndicatorView()
		spinner.translatesAutoresizingMaskIntoConstraints = false
		spinner.hidesWhenStopped = true
		return spinner
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		addSubview(spinner)
		spinner.startAnimating()
		addConstraints()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func addConstraints() {
		NSLayoutConstraint.activate([
			spinner.widthAnchor.constraint(equalToConstant: 55),
			spinner.heightAnchor.constraint(equalToConstant: 55),
			spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
			spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
		])
	}

}
