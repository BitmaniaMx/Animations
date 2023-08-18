//
//  ViewController.swift
//  Animations
//
//  Created by Rafael González on 12/08/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var containerView: UIView!
    
    @IBOutlet var myView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view1 = UIView()
        var frame1 = CGRect(x: 0, y: 0, width: 100, height: 100)
        view1.frame = frame1
        view1.backgroundColor = UIColor.green
        containerView.addSubview(view1)
        UIView.animate(withDuration: 0.3, animations: {
            view1.backgroundColor = UIColor.yellow
            frame1 = CGRect(x: 150, y: 150, width: 80, height: 80)
            view1.frame = frame1
        })
        
        let view2 = UIView()
        var frame2 = CGRect(x: 150, y: 150, width: 100, height: 100)
        view2.frame = frame2
        view2.backgroundColor = UIColor.magenta
        containerView.addSubview(view2)
        
        UIView.animate(withDuration: 0.3, animations: {
            view2.backgroundColor = UIColor.blue
            frame2 = CGRect(x: 0, y: 0, width: 110, height: 110)
            view2.frame = frame2
        })
        
        
    }

    
    
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        let cornerRadius = (myView.cornerRadius == 0) ? 50.0 : 0
        let color = startButton.backgroundColor
        let reverseColor = startButton.tintColor
        
        startButton.animateBackgroundColor(to: reverseColor!, duration: 0.3)
        startButton.animateTintColor(to: color!, duration: 0.3)
        startButton.animateBorderColor(to: color!, duration: 0.3)
        myView.animateCornerRadius(to: cornerRadius, duration: 0.3)
        myView.animateBackgroundColor(to: color!, duration: 0.3)
        myView.animateBorderColor(to: reverseColor!, duration: 0.3)
    }
    
    
    
    
    
    

}

