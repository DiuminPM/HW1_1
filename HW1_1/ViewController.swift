//
//  ViewController.swift
//  HW1_1
//
//  Created by DiuminPM on 06.12.2020.
//

import UIKit
enum CurrentLight {
    case red, yellow, gren
}
class ViewController: UIViewController {

    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLighth = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        startButton.layer.cornerRadius = 10
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff

        
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }


    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        switch currentLighth {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLighth = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLighth = .gren
        case .gren:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLighth = .red
        }
    }
    
}

