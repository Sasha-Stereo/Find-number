//
//  BlueViewController.swift
//  FindNumber
//
//  Created by Катерина on 13.12.2021.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var textForLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = textForLabel
    }
    

    @IBAction func goToVioletCoynroller(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController (withIdentifier: "violetVC") as? VioletViewController{
            vc.textForLabel = "Text String"
            vc.title = "ФИОЛЕТ"
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}

