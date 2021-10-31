//
//  WelcomeViewController.swift
//  H.W 2.4
//
//  Created by Ирина on 29.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    var user = ""
    private let enter = Entrance.init(loginUser: "123", password: "123", nameUser: "Irina", surname: "Bexter")
    
    @IBOutlet weak var welcomeLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLable.text = "Welcome, \(enter.nameUser) \(enter.surname)!"
    }
}

    


