//
//  Button.swift
//  Ed's work
//
//  Created by Arjun Narula on 23/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//
import UIKit

class Button: UIButton {
    
    private let borderGradientView: GradientView = {
        let gradientView = GradientView(frame: .zero)
        gradientView.isUserInteractionEnabled = false
        gradientView.autoresizingMask = []
        //gradientView.setBeboltGradient()
        return gradientView
    }()
    
    private let backgroundGradientView: GradientView = {
        let gradientView = GradientView(frame: .zero)
        gradientView.isUserInteractionEnabled = false
        gradientView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //gradientView.setBeboltGradient()
        return gradientView
    }()
    
    @IBInspectable
    var applyBorderGradient: Bool = false {
        didSet {
            if applyBorderGradient {
                backgroundColor = UIColor.clear
                
                let shapeLayer = CAShapeLayer()
                shapeLayer.path = UIBezierPath(ovalIn: bounds).cgPath
                shapeLayer.lineWidth = 5
                shapeLayer.fillColor = UIColor.clear.cgColor
                shapeLayer.strokeColor = UIColor.black.cgColor
                
                borderGradientView.frame = bounds
                borderGradientView.layer.mask = shapeLayer
                insertSubview(borderGradientView, at: 0)
            } else {
                borderGradientView.frame = bounds
                borderGradientView.removeFromSuperview()
            }
        }
    }
    
    @IBInspectable
    var applyBackgroundGradient: Bool = false {
        didSet {
            if applyBackgroundGradient {
                backgroundGradientView.frame = bounds
                insertSubview(backgroundGradientView, at: 0)
            } else {
                backgroundGradientView.frame = bounds
                backgroundGradientView.removeFromSuperview()
            }
        }
    }
    
}
