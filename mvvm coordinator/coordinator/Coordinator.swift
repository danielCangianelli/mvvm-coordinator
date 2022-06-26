//
//  Coordinator.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import UIKit

enum Event {
    case goToScreenA
    case goToScreenB
    case goToScreenC
    case nothing
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }

    func eventOcurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
