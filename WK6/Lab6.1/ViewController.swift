//
// ItemsTableViewController.swift
// Lab 6.1
//
// Created by Leonard Eriyo
// 

import UIKit

class ViewController: UIViewController{

	@IBOutlet weak var label: UILabel!
	

	var item: EmojiEntry?

	override func viewDidLoad(){
		super.viewDidLoad()
		label.text = "\(item?.emoji ?? "")\(item?.meaning ?? "No item selected")"
	}
}