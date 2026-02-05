//
//  ContentView.swift
//  LabEx4a
//
//  Created by Tech on 2026-02-05.
//

import SwiftUI

struct SecondScreen: View{
    @Environment(\.dismiss) private var dismiss
    let message:String
    
    @Binding var msg:String
    
    var body: some View{
        VStack{
            Text(message)
            Button("Back"){
                msg = "Message from second"
                dismiss()
            }
        }
        .navigationTitle("Second")
    }
}

struct ModalView:View{
    @Environment(\.dismiss) private var dismiss
    let  callback:(String)->Void
    var body: some View{
        VStack{
            Text("Modal")
            Button("Dismiss"){
                callback("Message from modal")
                dismiss()
            }
        }
        .navigationTitle("Modal")
    }
}

struct ContentView: View {
    @State private var showModal = false
    @State private var message:String = ""
    
    var body: some View {
        NavigationStack{
            VStack {
                Text(message)
                NavigationLink("Go to Second"){
                    SecondScreen(message: "Message from main",
                    msg: $message)
                }
                
                Button("Open Modal"){
                    showModal = true
                }.sheet(isPresented: $showModal){
                    ModalView(){self.message = $0}
                }
            }
            .padding()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
