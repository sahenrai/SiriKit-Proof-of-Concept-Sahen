//
//  ViewController.swift
//  Siri-Demo
//
//  Created by Centelon on 17/8/19.
//  Copyright © 2019 Centelon. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        donateInteraction()
    }
    
    func donateInteraction(){
        
        let intent = DataInfoIntent()
        intent.suggestedInvocationPhrase = "Add Data"
        intent.key = "key"
        intent.value = "value"
        let interaction = INInteraction(intent: intent, response: nil)
        
        interaction.donate { (error) in
            if error != nil {
                if let error = error as NSError? {
                    print("Interaction donation failed: \(error.description)")
                } else {
                    print("Successfully donated interaction")
                }
            }
        }
    }


}

