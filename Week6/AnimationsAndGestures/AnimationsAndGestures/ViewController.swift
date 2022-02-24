//
//  ViewController.swift
//  AnimationsAndGestures
//
//  Created by lee bennett on 2/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueVIew: UIView!
    
    @IBOutlet weak var centerYConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapDidRecgonized(tap:)))
        tap.numberOfTapsRequired = 1
        
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTapDidRecgonized(tap:)))
        doubleTap.numberOfTapsRequired = 2
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeDidReconigzed(anything:)))
        swipeUp.direction = .up
        
//        let swipeDown = UISwipeGestureRecognizer(target: <#T##Any?#>, action: <#T##Selector?#>)
//        swipeDown.direction = .down
        
        tap.require(toFail: doubleTap)

        
        blueVIew.addGestureRecognizer(tap)
        blueVIew.addGestureRecognizer(doubleTap)
        blueVIew.addGestureRecognizer(swipeUp)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func swipeDidReconigzed(anything: UISwipeGestureRecognizer){
        print("\(#function)")
    }
    
    @objc func tapDidRecgonized(tap: UITapGestureRecognizer){
        print("\(#function)")
        let animator = UIViewPropertyAnimator(duration: 5.0, curve: .easeInOut) {
            self.blueVIew.backgroundColor = UIColor.red
//            self.centerYConstraint.constant = 0.0
//            self.blueVIew.transform = CGAffineTransform(rotationAngle: 90.0)
//            self.blueVIew.center = .zero
//            self.blueVIew.alpha = 0
        }
        
        animator.addCompletion { position in
            let animator = UIViewPropertyAnimator(duration: 5.0, curve: .easeInOut) {
                self.blueVIew.backgroundColor = UIColor.green
            }
            animator.startAnimation()
        }
        
        animator.startAnimation()
//        animator.stopAnimation(true)
        
        
    }
    
    @objc func doubleTapDidRecgonized(tap: UITapGestureRecognizer){
        print("\(#function)")
    }
    


}

