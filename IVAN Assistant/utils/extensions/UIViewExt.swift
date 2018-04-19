//
//  UIViewExt.swift
//  IVAN Assistant
//
//  Created by FelipeConvo on 4/18/18.
//  Copyright © 2018 IvanDrive. All rights reserved.
//

import UIKit

extension UIView {
    
    @discardableResult
    func anchorViewBelow(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        anchor(top: referenceView.bottomAnchor, size: size, padding: padding)
        
        return self
    }
    
    @discardableResult
    func anchorViewAbove(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        anchor(bottom: referenceView.topAnchor, size: size, padding: padding)
        
        return self
    }
    
    @discardableResult
    func anchorViewStart(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        anchor(trailing: referenceView.trailingAnchor, size: size, padding: padding)
        
        return self
    }
    
    @discardableResult
    func anchorViewEnd(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        anchor(leading: referenceView.trailingAnchor, size: size, padding: padding)
        
        return self
    }
    
    @discardableResult
    func anchorViewCenterX(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        centerXAnchor.constraint(equalTo: referenceView.centerXAnchor).isActive = true
        
        anchor(size: size, padding: padding)
        
        return self
    }
    
    @discardableResult
    func anchorViewCenterY(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        centerYAnchor.constraint(equalTo: referenceView.centerYAnchor).isActive = true
        
        anchor(size: size, padding: padding)
        
        return self
    }
    
    @discardableResult
    func anchorViewWidth(referenceView: UIView, padding: UIEdgeInsets = .zero, multiplier: CGFloat = 1.0) -> UIView {
        anchor(width: referenceView.widthAnchor, padding: padding, multiplier: multiplier)
        
        return self
    }
    
    @discardableResult
    func anchorViewHeight(referenceView: UIView, padding: UIEdgeInsets = .zero, multiplier: CGFloat = 1.0) -> UIView {
        anchor(height: referenceView.heightAnchor, padding: padding, multiplier: multiplier)
        
        return self
    }
    
    @discardableResult
    func anchorViewCenter(referenceView: UIView, size: CGSize = .zero, padding: UIEdgeInsets = .zero) -> UIView {
        anchorViewCenterX(referenceView: referenceView, size: size, padding: padding)
        anchorViewCenterY(referenceView: referenceView, size: size, padding: padding)
        
        return self
    }
    
    fileprivate func anchor(top: NSLayoutYAxisAnchor? = nil,
                            bottom: NSLayoutYAxisAnchor? = nil,
                            leading: NSLayoutXAxisAnchor? = nil,
                            trailing: NSLayoutXAxisAnchor? = nil,
                            width: NSLayoutDimension? = nil,
                            height: NSLayoutDimension? = nil,
                            size: CGSize = .zero,
                            padding: UIEdgeInsets = .zero,
                            multiplier: CGFloat = 1.0) {
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
        
        if let width = width {
            widthAnchor.constraint(equalTo: width, multiplier: multiplier).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalTo: height, multiplier: multiplier).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
    }
    
}
