//
//  EmbendedViewController.swift
//  Module7-HW
//
//  Created by Maksim Demin on 07.05.2021.
//
protocol EmbendedViewControllerDelegate {
    func changeColorBackGround(color: UIColor)
}

import UIKit

class EmbendedViewController: UIViewController {
    
    var delegate: EmbendedViewControllerDelegate?
    
    var colorEmbended: UIColor = .clear {
        didSet {view.backgroundColor = colorEmbended}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func changeColorToGreen(_ sender: Any) {
        delegate?.changeColorBackGround(color: UIColor.green)
    }
    
    @IBAction func changeColorParentToYellow(_ sender: Any) {
        delegate?.changeColorBackGround(color: UIColor.yellow)
    }
    
    @IBAction func changeColorParentToPurple(_ sender: Any) {
        delegate?.changeColorBackGround(color: UIColor.purple)
    }
}
