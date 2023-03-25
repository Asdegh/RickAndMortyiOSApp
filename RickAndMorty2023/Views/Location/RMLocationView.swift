//
//  LocationView.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 25.03.2023.
//

import UIKit

final class LocationView: UIView {

	private let tableView: UITableView = {
		let table = UITableView()
		table.translatesAutoresizingMaskIntoConstraints = false
		table.alpha = 0
		table.isHidden = true
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()

	private let spinner: UIActivityIndicatorView = {
		let spinner = UIActivityIndicatorView()
		spinner.translatesAutoresizingMaskIntoConstraints = false
		spinner.hidesWhenStopped = true
		return spinner
	}()

	// MARK: - Init
	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = .red
		translatesAutoresizingMaskIntoConstraints = false
		addSubviews(tableView, spinner)
		spinner.startAnimating()
		addConstraints()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func addConstraints() {
		NSLayoutConstraint.activate([
			spinner.heightAnchor.constraint(equalToConstant: 100),
			spinner.widthAnchor.constraint(equalToConstant: 100),
			spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
			spinner.centerYAnchor.constraint(equalTo: centerYAnchor),

			tableView.topAnchor.constraint(equalTo: topAnchor),
			tableView.leftAnchor.constraint(equalTo: leftAnchor),
			tableView.rightAnchor.constraint(equalTo: rightAnchor),
			tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
		])
	}

}