//
//  ScreenCViewModel.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import Foundation

final class ScreenCViewModel: ScreenViewModel {
    var nextScreen: Observable<Event?> = Observable(nil)

    func eventButtonClick() {
        self.nextScreen.value = nextScreenForScreen["C"]
    }
}
