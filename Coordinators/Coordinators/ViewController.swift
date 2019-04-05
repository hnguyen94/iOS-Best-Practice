//
//  ViewController.swift
//  Coordinators
//
//  Created by Hoang Nguyen on 05.04.19.
//  Copyright © 2019 Hoang Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }

    @IBAction func createTapped(_ sender: Any) {
        coordinator?.createAccount()
    }


}

