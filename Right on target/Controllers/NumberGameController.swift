//
//  ViewController.swift
//  Right on target
//
//  Created by Василий Буланов on 19.04.2022.
//

import UIKit

class NumberGameController: UIViewController {

    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    private var game: Game = Game(valueGenerator: Generator(startValue: 0, endValue: 50)!, rounds: 5)
    
    // MARK: - Жизненный цикл
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
        
//        let versionLabel = UILabel(frame: CGRect(x: 20, y: 10, width: 200, height: 20))
//        versionLabel.text = "Version 1.1"
//        self.view.addSubview(versionLabel)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    // MARK: - Взаимодействие View - Model
    
    @IBAction func checkNumber(_ sender: Any) {
        game.currentRound.calculateScore(with: Int(slider.value))
        if game.isGameEnded {
            showAlertWith(score: game.score)
            game.restartGame()
        } else {
            game.startNewRound()
        }
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    // MARK: - Обновление View
    
    private func showAlertWith(score: Int) {
        let alert = UIAlertController(title: "Игра окончена",
                                      message: "Вы заработали \(score) очков",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default))
        self.present(alert, animated: true)
    }
    
    private func updateLabelWithSecretNumber(newText: String) {
        label.text = newText
    }
    
    // MARK: Переходы
    
    @IBAction func comeBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}

