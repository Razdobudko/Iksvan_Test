//
//  BaseView.swift
//  Iksvan_Test
//
//  Created by Veranika Razdabudzka on 9.09.22.
//

import UIKit

class BaseView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get{ return self.layer.borderWidth }
        set{ self.layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor {
        get{ return UIColor(cgColor: self.layer.borderColor!) }
        set{ self.layer.borderColor = newValue.cgColor }
    }
    
    @IBInspectable var shadowColor: UIColor {
        get{ return UIColor(cgColor: self.layer.shadowColor!) }
        set{ self.layer.shadowColor = newValue.cgColor }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get{ return self.layer.shadowRadius }
        set{ self.layer.shadowRadius = newValue }
    }

    @IBInspectable var shadowOpacity: Float {
        get{ return self.layer.shadowOpacity }
        set{ self.layer.shadowOpacity = newValue }
    }
    
    @IBInspectable var shadowOffset: CGSize{
        get{ return self.layer.shadowOffset }
        set{ self.layer.shadowOffset = newValue }
    }
}

