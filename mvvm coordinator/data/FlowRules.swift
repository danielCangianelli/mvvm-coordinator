//
//  FlowRules.swift
//  mvvm coordinator
//
//  Created by Daniel Negreiros Cangianelli on 26/06/22.
//

import Foundation
import UIKit

let nextScreenForScreen: [String: Event] = [
    "A" : .goToScreenB,
    "B" : .goToScreenC,
    "C" : .goToScreenA
]


let rulesFromScreen: [String: VCProperties] = [
    "A" : VCProperties(vcName: "ScreenA", vcId: "screenAViewController"),
    "B" : VCProperties(vcName: "ScreenB", vcId: "screenBViewController"),
    "C" : VCProperties(vcName: "ScreenC", vcId: "screenCViewController")
]

struct VCProperties {
    let vcName: String
    let vcId: String
    init(
        vcName: String,
        vcId: String
    ){
        self.vcName = vcName
        self.vcId = vcId
    }
}
