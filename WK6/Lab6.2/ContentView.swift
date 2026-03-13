//
// ContentView.swift
// Lab 6.2
//
// Created by Leonard Eriyo
// 

import SwiftUI

struct EmojiEntry: Identifiable {
	let id = UUID() //Useful for SwiftUI lists
	let emoji: String
	let meaning: String
}

struct ContentView: View{
	let items = [
    EmojiModel(emoji: "😀", meaning: "Grinning Face"),
    EmojiModel(emoji: "😂", meaning: "Face with Tears of Joy"),
    EmojiModel(emoji: "😍", meaning: "Smiling Face with Heart-Eyes"),
    EmojiModel(emoji: "🤔", meaning: "Thinking Face")
	]
	

	var body: some View {
		NavigationStack {
			List (items){
				items in
				Text(item.emoji)
			}
		}
	}
}

struct DetailView: View {
	NavigationStack{
		List(items){
			item in

			NavigationLink(destination : {DetailView(item:
			item)}){
				Text(item.emoji)
			}
		}
	}
	let item: EmojiEntry

	var body: some View {
		VStack{
			Text(item.emoji)
			Text(item.emoji)
		}
		
	}
}
