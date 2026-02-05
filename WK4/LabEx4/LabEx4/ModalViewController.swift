//
//  ModalViewController.swift
//  LabEx4
//
//  Created by Tech on 2026-02-05.
//

import UIKit

class ModalViewController: UIViewController {
    
    var callback:((String)->Void)?

    
    @IBAction func dismissModal() {
        dismiss(animated: true){
            if let f = self.callback{
                f("Message from Modal")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
