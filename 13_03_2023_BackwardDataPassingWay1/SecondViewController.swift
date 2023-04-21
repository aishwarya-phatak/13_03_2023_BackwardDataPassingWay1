//
//  SecondViewController.swift
//  13_03_2023_BackwardDataPassingWay1
//
//  Created by Vishal Jagtap on 21/04/23.
//

import UIKit

//step 1 : write a protocol
class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    //step 2: property of protocol
    var delegate : BackDataPassingProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        guard let delegateSVC = delegate else {
            return
        }
        var extarctedName = self.nameTextField.text
        
        //step 3. extract text from textfield and pass it to the method passDataTOFVC
        delegateSVC.passDataToFirstViewController(textToPass: extarctedName ?? "Rutik")
        navigationController?.popViewController(animated: true)
    }
}
