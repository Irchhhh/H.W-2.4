//
//  InfoViewController.swift
//  H.W 2.4
//
//  Created by Ирина on 29.10.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var hobbyLabel: UILabel!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let info = Info.init(name: "Irina", surname: "Bexter", age: 18, hobby: "Programming")
        
        nameLabel.text = "Name: \(String(describing: info.name))"
        surnameLabel.text = "Surname: \(String(describing: info.surname))"
        ageLabel.text = "Age: \(info.age)"
        hobbyLabel.text = "Hobby: \(info.hobby)"
        
        
        
    }
    

   

}
