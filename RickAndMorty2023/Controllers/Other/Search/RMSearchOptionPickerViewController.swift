//
//  RMSearchOptionPickerViewController.swift
//  RickAndMorty2023
//
//  Created by Alex Murphy on 11.04.2023.
//

import UIKit

final class RMSearchOptionPickerViewController: UIViewController {

	private let option: RMSearchInputViewViewModel.DynamicOption
	private let selectionBlock: ((String) -> Void)

	private let tableView: UITableView = {
		let table = UITableView()
		table.translatesAutoresizingMaskIntoConstraints = false
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()

	// MARK: - Init
	init(option: RMSearchInputViewViewModel.DynamicOption, selection: @escaping (String) -> Void) {
		self.option = option
		self.selectionBlock = selection
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder: NSCoder) {
		fatalError()
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .systemBackground
		setUpTableView()
    }

	private func setUpTableView() {
		view.addSubview(tableView)
		tableView.delegate = self
		tableView.dataSource = self

		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
			tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
		])
	}
}

extension RMSearchOptionPickerViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return option.choices.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let choice = option.choices[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		var content = cell.defaultContentConfiguration()
		content.text = choice.uppercased()
		cell.contentConfiguration = content
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		let choice = option.choices[indexPath.row]
		self.selectionBlock(choice)
		dismiss(animated: true)
	}
}
