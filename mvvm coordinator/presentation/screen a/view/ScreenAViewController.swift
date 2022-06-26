//
//  ViewController.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 21/06/22.
//

import UIKit

final class ScreenAViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    private var viewModel: ScreenViewModel?


    @IBAction func buttonGoToBClick(_ sender: UIButton) {
        viewModel?.eventButtonClick()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViewModel()
        setupObservers()
    }

    private func initializeViewModel() {
        viewModel = ScreenAViewModel()
    }

    private func setupObservers() {
        viewModel?.nextScreen.observe(on: self) { [weak self] in self?.coordinator?.eventOcurred(with: $0 ?? .nothing) }
    }
}

