//
// ItemsTableViewController.swift
// Lab 6.1
//
// Created by Leonard Eriyo
// 

import UIKit

class ItemsTableViewController: UITableViewController {
	// let items = ["One", "Two", "Three", "Four", "Five"]
	let items = [
    EmojiModel(emoji: "😀", meaning: "Grinning Face"),
    EmojiModel(emoji: "😂", meaning: "Face with Tears of Joy"),
    EmojiModel(emoji: "😍", meaning: "Smiling Face with Heart-Eyes"),
    EmojiModel(emoji: "🤔", meaning: "Thinking Face")
]
	override func viewDidLoad() {
			super.viewDidLoad()

		
	}

 	override func numberOfSections(in tableView: UITableView) -> Int {
			return 1
 	}

 	override func tableView(_ tableView: UITableView, 
			numberOfRowsInSection section: Int) -> Int {
				return items.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt
			indexPath: IndexPath) -> UITableViewCell {
			let cell = tableView.dequeueReusableCell(withIdentifier:
				"item", for: indexPath)

			// Configure the cell....
			cell.textLabel?.text = items[indexPath.row].emoji

			return cell
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt
		indexPath: IndexPath) {
			print(items[indexPath.row]) 
	}

	override func tableView(_ tableView: UITableView, canMoveRowAt
		indexPath: IndexPath) -> Bool {
			return true
	}

		
	override func tableView(_ tableView: UITableView, commit
		editingStyle: UITableViewCell.EditingStyle, cellForRowAt indexPath:
		indexPath) {
			if editingStyle == .delete {
				//Delete the row from the data source
				tableView.deleteRows(at: [indexPath], with: .fade)
			} else if editingStyle == .insert {
				//Create a new instance of the appropiate class, insert 
				//it into the array, and add a new row to the table view
			}
		}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let indexPath = tableView.indexPathForSelectedRow {
			let item = items[indexPath.row]
			(segue.destination as! ViewController).item = item
		}
	}
			
}




































