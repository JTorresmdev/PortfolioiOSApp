//
//  ViewController.swift
//  PorfolioApp
//
//  Created by Justin Torres on 1/14/18.
//  Copyright © 2018 TorresJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var linkedInImageView: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertImageIntoCircle(image: profileImageView)
        convertImageIntoCircleWithBorder(image: linkedInImageView)
        applyBackgroundGradient()
        
    
        
    }


    
    

    
    //This function converts a UIImageView into a circle with a white border
    private func convertImageIntoCircleWithBorder(image: UIImageView){
        image.layer.cornerRadius = image.frame.size.width/2
        image.clipsToBounds = true
        image.layer.borderWidth = 3.0
        image.layer.borderColor = UIColor.white.cgColor
    }
    
    //This function converts a UIImageView into a circle
    private func convertImageIntoCircle(image: UIImageView){
        image.layer.cornerRadius = image.frame.size.width/2
        image.clipsToBounds = true
    }
    
    //This function creates a gradient to apply to the background for design
    private func applyBackgroundGradient(){
        let blueColor = UIColor(red: (0/255), green: (204/255), blue: (255/255), alpha: 1)
        let lightGreyColor = UIColor(red: (235/255), green: (235/255), blue: (235/255), alpha: 1)
        let gradientColors: [CGColor] = [blueColor.cgColor, lightGreyColor.cgColor]
        //let gradientLocations: [Float] = [0.0, 1.0]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.view.frame
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}

