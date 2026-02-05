//
//  ViewController.swift
//  LabEx4
//
//  Created by Tech on 2026-02-05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue,sender:
        Any?){
        switch segue.identifier{
        case "toSecond":
            if let dest = segue.destination as?
                SecondViewController{
                dest.message = "Message from main"
            }
        case "toModal":
            if let dest = segue.destination as? ModalViewController{
                dest.callback = {print($0)}
                }
        default:
            print("Unknown seque")
        }
    }
    
    @IBAction func unwindToMain(_ segue: UIStoryboardSegue){
        if let src = segue.source as? SecondViewController{
            print(src.message)
        }
    }


}

