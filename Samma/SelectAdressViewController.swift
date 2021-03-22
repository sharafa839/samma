//
//  SelectAdressViewController.swift
//  Samma
//
//  Created by ahmed on 3/22/21.
//

import UIKit

class SelectAdressViewController: UIViewController {
    // MARK: - IB Outlets
    
    
    
    
    
    
    
    
    
    
    
    
    // MARK: - Vars
    
    
    
    
    
    
    
    
    
    
    
    // MARK: - LifeCycle
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addBottomSheet()
        UIView.animate(withDuration: 0.3) { [weak self] in
                let frame = self?.view.frame
            let yComponent = UIScreen.main.bounds.height - 200
            self?.view.frame = CGRect(x: 0, y: yComponent, width: frame!.width, height: frame!.height)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareBackgroundView()
    }
    
    
    
    
    
    
    
    
    // MARK: - Helpers
 
    
    
    func addBottomSheet(){
        let bottomSheetVc = AnimationCard()
        self.addChild(bottomSheetVc)
        self.view.addSubview(bottomSheetVc.view)
        bottomSheetVc.didMove(toParent: self)
        
        let height = view.frame.height
        let width = view.frame.width
        bottomSheetVc.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
    }
    
    func prepareBackgroundView(){
        let blurEffect = UIBlurEffect.init(style: .dark)
        let visualEffect = UIVisualEffectView.init(effect: blurEffect)
        let bluredView = UIVisualEffectView.init(effect: blurEffect)
        bluredView.contentView.addSubview(visualEffect)

        visualEffect.frame = UIScreen.main.bounds
        bluredView.frame = UIScreen.main.bounds

        view.insertSubview(bluredView, at: 0)
    }
    
    
    
    
    
    
    
    // MARK: - Actions
   
    


}
