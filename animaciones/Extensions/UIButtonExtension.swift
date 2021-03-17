//
//  UIButtonExtension.swift
//  animaciones
//
//  Created by Gerson Isaias on 21/01/21.
//
import UIKit

extension UIButton {
    func round(){
        layer.cornerRadius = bounds.height / 2
    }
    
    func bounce(){
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { (completion) in
            if completion {
                UIView.animate(withDuration: 0.2) {
                    self.transform = .identity
                }

            }
        }

    }
    
    func jump() {
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(translationX: 0, y: -10)
        } completion: { (completado) in
            if completado {
                UIView.animate(withDuration: 0.2) {
                    self.transform = .identity
                }
            }
        }

    }
    
    func shine(){
        UIView.animate(withDuration: 0.2) {
            self.alpha = 0.3
        } completion: { (c) in
            UIView.animate(withDuration: 0.2) {
                self.alpha = 1
            }
        }

    }
    
    func pulse(){
        UIView.animate(withDuration: 0.5) {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { (c) in
            UIView.animate(withDuration: 1) {
                self.transform = .identity
            } completion: { (c) in
                self.pulse()
            }
        }

    }
}
