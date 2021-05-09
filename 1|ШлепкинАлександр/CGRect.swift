//
//  CGRect.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 08.05.2021.
//
import Foundation
import UIKit


class gradietView : UIView {
    
    override static var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    var gradient: CAGradientLayer {
        return self.layer as! CAGradientLayer
    }
    

    @IBInspectable var startColor: UIColor = #colorLiteral(red: 0.03808785729, green: 0.7071825682, blue: 1, alpha: 1) {
        didSet {
            self.updateColors()
        }
    }
   @IBInspectable var finishColor: UIColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1) {
        didSet {
            self.updateColors()
        }
    }
    
   @IBInspectable var startLocation: CGFloat = 0 {
        didSet {
            self.updateLocations()
        }
    }
    @IBInspectable var finishLocation: CGFloat = 1 {
        didSet {
            self.updateLocations()
        }
    }
    @IBInspectable var startPoint: CGPoint = .zero {
        didSet {
            self.updateStartPoint()
        }
    }
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 0, y: 1) {
        didSet {
            self.updateEndPoint()
        }
    }
    
    
    func updateLocations() {
        self.gradient.locations = [self.startLocation as NSNumber, self.finishLocation as NSNumber]
    }
        
    func updateColors() {
        self.gradient.colors = [self.startColor.cgColor, self.finishColor.cgColor]
    }

    func updateStartPoint() {
        self.gradient.startPoint = startPoint
    }

    func updateEndPoint() {
        self.gradient.endPoint = endPoint
    }

    
    
}

