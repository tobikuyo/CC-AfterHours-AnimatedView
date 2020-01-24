//
//  AnimatedViewController.swift
//  Animations
//
//  Created by Tobi Kuyoro on 24/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class AnimatedViewController: UIViewController {
    
    @IBOutlet weak var catImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        zoomCat()
    }
    
    func zoomCat() {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseIn, animations: {
            self.catImageView.transform = CGAffineTransform(scaleX: 14.0, y: 14.0)
        }) { (_) in
            print("Zooming on cat")
        }
        
        UIView.animate(withDuration: 0.8, delay: 1.0, options: .curveEaseIn, animations: {
            self.catImageView.alpha = 0.1
        }) { (_) in
            print("Fading out")
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.performSegue(withIdentifier: "MainScreenShowSegue", sender: nil)
        }
    }
}
