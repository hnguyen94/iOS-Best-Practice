//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by Hoang Nguyen on 05.04.19.
//  Copyright © 2019 Hoang Nguyen. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {

    weak var coordinator: CreateAccountCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    deinit {
        print("Create Account View Controller")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
