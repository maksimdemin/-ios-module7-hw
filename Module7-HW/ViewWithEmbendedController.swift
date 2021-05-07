//
//  ViewWithEmbendedController.swift
//  Module7-HW
//
//  Created by Maksim Demin on 07.05.2021.
//

import UIKit

class ViewWithEmbendedController: UIViewController, EmbendedViewControllerDelegate {
    
    private var embendedVC: EmbendedViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColorEmbendedToGreen(_ sender: Any) {
        embendedVC?.colorEmbended = .green
    }
    
    @IBAction func changeColorEmbendedToYellow(_ sender: Any) {
        embendedVC?.colorEmbended = .yellow
    }
    
    @IBAction func changeColorEmbendedToPurple(_ sender: Any) {
        embendedVC?.colorEmbended = .purple
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? EmbendedViewController, segue.identifier == "EmbendedSegue" {
            embendedVC = vc
            vc.delegate = self
        }
    }
    
    func changeColorBackGround(color: UIColor) {
        self.view.backgroundColor = color
    }

}
