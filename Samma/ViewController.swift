//
//  ViewController.swift
//  Samma
//
//  Created by ahmed on 3/22/21.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var EnglishButtonView: UIView!
    @IBOutlet weak var arabicButtonView: UIView!
    @IBOutlet weak var HusaButtonView: UIView!
    @IBOutlet weak var FrenchButtonView: UIView!
    @IBOutlet weak var englishButton: UIButton!
    @IBOutlet weak var arabicButton: UIButton!
    @IBOutlet weak var husaButton: UIButton!
    @IBOutlet weak var frenchButton: UIButton!
    
    
    
    
    
    
    
    
    
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      viewOfButton()
    }
    
    //MARK: - Helpers Function
    
    //MARK: - control of view
    private func viewOfButton(){
        EnglishButtonView.layer.cornerRadius = 10
        EnglishButtonView.clipsToBounds = true
        EnglishButtonView.layer.borderWidth = 0.5
        EnglishButtonView.layer.borderColor = .init(red: 0, green: 0.9, blue: 0.1, alpha: 1)
        
       arabicButtonView.layer.cornerRadius = 10
       arabicButtonView.clipsToBounds = true
       arabicButtonView.layer.borderWidth = 0.5
       arabicButtonView.layer.borderColor = .init(red: 0, green: 0.9, blue: 0.1, alpha: 1)
        
       HusaButtonView.layer.cornerRadius = 10
       HusaButtonView.clipsToBounds = true
       HusaButtonView.layer.borderWidth = 0.5
       HusaButtonView.layer.borderColor = .init(red: 0, green: 0.9, blue: 0.1, alpha: 1)
        
        FrenchButtonView.layer.cornerRadius = 10
        FrenchButtonView.clipsToBounds = true
        FrenchButtonView.layer.borderWidth = 0.5
        FrenchButtonView.layer.borderColor = .init(red: 0, green: 0.9, blue: 0.1, alpha: 1)
        
        
       

    }
    
    
    
    
    
    
    
    

    
    
    
    
    //MARK: - Actions


    @IBAction func englishLangButton(_ sender: UIButton) {
        englishButton.setTitleColor(.green, for: .normal)
        arabicButton.isEnabled = false
        husaButton.isEnabled = false
        frenchButton.isEnabled = false
    }
    
    @IBAction func arabicLangButton(_ sender: UIButton) {
        arabicButton.setTitleColor(.green, for: .normal)
        englishButton.isEnabled = false
        husaButton.isEnabled = false
        frenchButton.isEnabled = false
    }
    
    @IBAction func husalangButton(_ sender: UIButton) {
        
        husaButton.setTitleColor(.green, for: .normal)
        arabicButton.isEnabled = false
        englishButton.isEnabled = false
        frenchButton.isEnabled = false
    }
    
    @IBAction func frenchLangButton(_ sender: UIButton) {
        frenchButton.setTitleColor(.green, for: .normal)
        arabicButton.isEnabled = false
        englishButton.isEnabled = false
        husaButton.isEnabled = false
    }
    
}

