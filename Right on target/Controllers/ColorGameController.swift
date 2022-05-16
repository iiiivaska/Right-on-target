//
//  ColorGameController.swift
//  Right on target
//
//  Created by Василий Буланов on 21.04.2022.
//

import UIKit

class ColorGameController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var hexLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Взаимодействие View - Model
    
    @IBAction func compareValue(sender: UIButton) {
        
    }
    
    // MARK: - Переходы

    @IBAction func comeBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
