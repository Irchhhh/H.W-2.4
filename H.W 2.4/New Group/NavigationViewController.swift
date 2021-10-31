//
//  NavigationViewController.swift
//  H.W 2.4
//
//  Created by Ирина on 29.10.2021.
//

import UIKit

class NavigationViewController: UIViewController {
    @IBOutlet weak var navigationViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationViewController.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is InfoViewController else { return }
    }}

