//
//  TestView.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 09.05.2021.
//

import UIKit

class TestView: UIView {
    
    override func draw(_ rect: CGRect) {
            super.draw(rect)
            guard let context = UIGraphicsGetCurrentContext() else { return }
            context.fill(CGRect(x: 0, y: 0, width: 50, height: 50))
        
        let testView = TestView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        testView.backgroundColor = .white

        }
    


    
  override class var layerClass: AnyClass {
        return CAShapeLayer.self
    
    
    
    
    let testView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    testView.layer.borderWidth = 4
    testView.layer.borderColor = #colorLiteral(red: 0.01861577207, green: 0.1417930802, blue: 1, alpha: 0.284968964)

    }
    
   
    
    
    
}
