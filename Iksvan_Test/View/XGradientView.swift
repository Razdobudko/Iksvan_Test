//
//  XGradientView.swift
//  Iksvan_Test
//
//  Created by Veranika Razdabudzka on 10.09.22.
//

import Foundation
import UIKit


@IBDesignable class XGradientView : UIView {
    @IBInspectable var color1: UIColor? { didSet { updateGradient() } }
    @IBInspectable var color2: UIColor? { didSet { updateGradient() } }
    @IBInspectable var color3: UIColor? { didSet { updateGradient() } }

    @IBInspectable var startPoint: CGPoint = CGPoint(x: 0.0, y: 0.0) { didSet { updateGradient() } }
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 1.0, y: 1.0) { didSet { updateGradient() } }
    
    private var gradientLayer: CAGradientLayer? { layer as? CAGradientLayer }

    override var bounds: CGRect { didSet { updateLayout() } }
    override var frame: CGRect { didSet { updateLayout() } }
    

    override class var layerClass: AnyClass { CAGradientLayer.self }
    
    private func updateLayout() {
        gradientLayer?.frame = CGRect(x: 0.0, y: 0.0, width: bounds.width, height: bounds.height)
    }
    
    
    private func updateGradient() {
        let color1 = self.color1 ?? UIColor.clear
        let color2 = self.color2 ?? UIColor.clear
        let color3 = self.color3 ?? UIColor.clear

        gradientLayer?.startPoint = startPoint
        gradientLayer?.endPoint = endPoint
        
        gradientLayer?.colors = [color1.cgColor, color2.cgColor, color3.cgColor]
    }
}


