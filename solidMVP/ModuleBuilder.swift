//
//  ModuleBuilder.swift
//  solidMVP
//
//  Created by Pavel Koyushev on 13.10.2020.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let person = Person(firstName: "Pavel", lastName: "Koyushev", country: "Russia")
        let view = MainViewController()
        
        let presenter = MainPresenter(view: view, person: person)
        view.presenter = presenter
        
        return view
    }
}
