//
//  AppCoordinator.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import UIKit

class AppCoordinator: Coordinator {

    private func performChange<T: UIViewController & Coordinating>(targetType: T, toScreen: String, reload: Bool = false){
        guard var vc = UIStoryboard(name: rulesFromScreen[toScreen]?.vcName ?? "",
                                    bundle: nil).instantiateViewController(withIdentifier: rulesFromScreen[toScreen]?.vcId ??  "") as? T else {
            fatalError("Unable to Instantiate Screen \(toScreen) View Controller")
        }
        vc.coordinator = self
        if reload {
            navigationController?.popToRootViewController(animated: true)
        } else {
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - Properties
    var navigationController: UINavigationController?

    func eventOcurred(with type: Event) {
        switch(type){
        case .goToScreenA:
            performChange(targetType: ScreenAViewController(), toScreen: "A", reload: true)
        case .goToScreenB:
            performChange(targetType: ScreenBViewController(), toScreen: "B")
        case .goToScreenC:
            performChange(targetType: ScreenCViewController(), toScreen: "C")
        case .nothing:
            break
        }
    }

    func start(){
        performChange(targetType: ScreenAViewController(), toScreen: "A")
    }
}


