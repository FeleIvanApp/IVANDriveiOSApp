//
//  UIViewExt.swift
//  IVAN Assistant
//
//  Created by FelipeConvo on 4/18/18.
//  Copyright © 2018 IvanDrive. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchorViewBelow(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        anchor(top: referenceView.bottomAnchor, bottom: nil, leading: nil, trailing: nil, size: size, padding: padding)
    }
    
    func anchorViewAbove(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        anchor(top: nil, bottom: referenceView.topAnchor, leading: nil, trailing: nil, size: size, padding: padding)
    }
    
    func anchorViewStart(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        anchor(top: nil, bottom: nil, leading: nil, trailing: referenceView.trailingAnchor, size: size, padding: padding)
    }
    
    func anchorViewEnd(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        anchor(top: nil, bottom: nil, leading: referenceView.trailingAnchor, trailing: nil, size: size, padding: padding)
    }
    
    func anchorViewCenterX(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        centerXAnchor.constraint(equalTo: referenceView.centerXAnchor).isActive = true
        
        anchor(top: nil, bottom: nil, leading: nil, trailing: nil, size: size, padding: padding)
    }
    
    func anchorViewCenterY(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        centerYAnchor.constraint(equalTo: referenceView.centerYAnchor).isActive = true
        
        anchor(top: nil, bottom: nil, leading: nil, trailing: nil, size: size, padding: padding)
    }
    
    func anchorViewCenter(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) {
        anchorViewCenterX(referenceView: referenceView, size: size, padding: padding)
        anchorViewCenterY(referenceView: referenceView, size: size, padding: padding)
    }
    
    fileprivate func anchor(top: NSLayoutYAxisAnchor?,
                            bottom: NSLayoutYAxisAnchor?,
                            leading: NSLayoutXAxisAnchor?,
                            trailing: NSLayoutXAxisAnchor?,
                            size: CGSize = .zero,
                            padding: UIEdgeInsets = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: padding.bottom).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: padding.right).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
    }
    
}
