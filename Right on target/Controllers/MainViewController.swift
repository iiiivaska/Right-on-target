//
//  MainViewController.swift
//  Right on target
//
//  Created by Василий Буланов on 21.04.2022.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: Переходы
    
    @IBAction func showSliderGame(_ sender: Any) {
        let sliderGame = storyboard?.instantiateViewController(withIdentifier: "SliderGame")
        self.present(sliderGame!, animated: true)
    }
    
    @IBAction func showColorGame(_ sender: Any) {
        let colorGame = storyboard?.instantiateViewController(withIdentifier: "ColorGame")
        self.present(colorGame!, animated: true)
    }
    
}
