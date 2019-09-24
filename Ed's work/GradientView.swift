//
//  GradientView.swift
//  Ed's work
//
//  Created by Arjun Narula on 23/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//
import UIKit

class GradientView: UIView {
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    public var gradientLayer: CAGradientLayer {
        guard let gradientLayer = layer as? CAGradientLayer else {
            fatalError("root layer is not a subclass of CAGradientLayer class")
        }
        return gradientLayer
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        baseInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        baseInit()
    }
    
    private func baseInit() {
        autoresizingMask = []
        backgroundColor = .clear
        contentMode = .redraw
    }
}

