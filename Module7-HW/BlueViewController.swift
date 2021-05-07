//
//  BlueViewController.swift
//  Module7-HW
//
//  Created by Maksim Demin on 06.05.2021.
//

import UIKit

class BlueViewController: UIViewController, WhiteViewControllerDelegate {

    @IBOutlet weak var labelForColorBV: UILabel!
    
    var beginTextLabel = "Green selected"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelForColorBV.text = beginTextLabel
        labelForColorBV.textColor = .green
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.identifier == "DataSegue" {
//            let destinationVC = segue.destination as! WhiteViewController
//            destinationVC.delegate = self
        
        if let destinationVC = segue.destination as? WhiteViewController, segue.identifier == "DataSegue" {
//        }
            destinationVC.delegate = self
        destinationVC.textForLabeldWhiteViewController = labelForColorBV.text!
        }
    }
    
    func sendTextToLabelOnViewController(info: String) {
        labelForColorBV.text = info

        switch info {
        case "Choosen Green":
            labelForColorBV.textColor = .green
        case "Choosen Red":
            labelForColorBV.textColor = .red
        case "Choosen Blue":
            labelForColorBV.textColor = .blue
        default:
            labelForColorBV.textColor = .black
        }
    }
}
