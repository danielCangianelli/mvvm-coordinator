//
//  ScreenBViewController.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import UIKit

class ScreenBViewController: UIViewController , Coordinating {
    var coordinator: Coordinator?
    private var viewModel: ScreenViewModel?
    @IBAction func goToScreenBClick(_ sender: UIButton) {
        viewModel?.eventButtonClick()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViewModel()
        setupObservers()
    }

    private func initializeViewModel() {
        viewModel = ScreenBViewModel()
    }

    private func setupObservers() {
        viewModel?.nextScreen.observe(on: self) { [weak self] in self?.coordinator?.eventOcurred(with: $0 ?? .nothing) }
    }
}
