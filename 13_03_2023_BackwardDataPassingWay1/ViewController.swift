//
//  ViewController.swift
//  13_03_2023_BackwardDataPassingWay1
//
//  Created by Vishal Jagtap on 21/04/23.
//

import UIKit

//step 4: conforming to the protocol
class ViewController: UIViewController,BackDataPassingProtocol{

    @IBOutlet weak var nameLabel: UILabel!
    var secondViewContoller : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func btnMoveToSVC(_ sender: Any) {
        
        secondViewContoller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        //step 6 : connection delegate property -- current instance of VC
        secondViewContoller?.delegate = self
        navigationController?.pushViewController(secondViewContoller!, animated: true)
    }
    
    //step 5 : binding of the text to nameLabel
    func passDataToFirstViewController(textToPass: String) {
        self.nameLabel.text = textToPass
    }
}

