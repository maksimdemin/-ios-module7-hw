//
//  WhiteViewController.swift
//  Module7-HW
//
//  Created by Maksim Demin on 05.05.2021.
//

protocol WhiteViewControllerDelegate {
    func sendTextToLabelOnViewController(info: String)
}

import UIKit

class WhiteViewController: UIViewController {
    
    var textForLabeldWhiteViewController = ""
    
    @IBOutlet weak var labelForColorWV: UILabel!
    
    var delegate: WhiteViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelForColorWV.text = textForLabeldWhiteViewController
        switch textForLabeldWhiteViewController {
        case "Green selected":
            labelForColorWV.textColor = .green
        case "Choosen Green":
            labelForColorWV.textColor = .green
        case "Choosen Red":
            labelForColorWV.textColor = .red
        case "Choosen Blue":
            labelForColorWV.textColor = .blue
        default:
            labelForColorWV.textColor = .black
        }
    }
    
    @IBAction func choosenGreen(_ sender: Any) {
        let info = "Choosen Green"
        delegate?.sendTextToLabelOnViewController(info: info)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func choosenRed(_ sender: Any) {
        let info = "Choosen Red"
        delegate?.sendTextToLabelOnViewController(info: info)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseBlue(_ sender: Any) {
        let info = "Choosen Blue"
        delegate?.sendTextToLabelOnViewController(info: info)
        self.dismiss(animated: true, completion: nil)
    }
}
