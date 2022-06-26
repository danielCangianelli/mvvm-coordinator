//
//  ScreenViewModel.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import Foundation

protocol ScreenViewModel{
    func eventButtonClick()
    var nextScreen: Observable<Event?> { get }
}
