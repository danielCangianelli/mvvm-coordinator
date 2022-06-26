//
//  ScreenCViewController.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import UIKit

class ScreenCViewController: UIViewController , Coordinating {
    var coordinator: Coordinator?
    private var viewModel: ScreenViewModel?

    @IBAction func goToScreenAClick(_ sender: UIButton) {
        viewModel?.eventButtonClick()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViewModel()
        setupObservers()
    }

    private func initializeViewModel() {
        viewModel = ScreenCViewModel()
    }

    private func setupObservers() {
        viewModel?.nextScreen.observe(on: self) { [weak self] in self?.coordinator?.eventOcurred(with: $0 ?? .nothing) }
    }
}
