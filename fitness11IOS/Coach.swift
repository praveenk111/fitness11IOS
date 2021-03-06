//
//  Coach.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2022-01-09.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI
import UIKit
import Firebase
import FirebaseStorage
import FirebaseFirestore

struct Coach: View {
    
    @State var name: [String] = []
    @State var EmailID: [String] = []
    @State var age: [String] = []
    @State var imag: [String] = []
    @State var image: [String] = []
    @State var proficient1: [String] = []
    @State private var imageURL = URL(string:"")

    

    var body: some View {
       // NavigationView{
        VStack{
        Text("Find Coach").foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
            .bold()
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
        }
            VStack{
 
                List(0..<name.count,id: \.self) { i in
                    ZStack{
                        Text("\(imag[i])")
                        WebImage(url: imageURL)
                                         .resizable()
                                         .aspectRatio(contentMode: .fit)
                    }
                    VStack{
                        Text("Name: " + name[i]).foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                    Text("Age: " + age[i]).foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                    Text("Email ID: " + EmailID[i]).foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                    Text("PROficient: " + proficient1[i]).foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                    
                }
            }

        }.onAppear(perform: dataretrive)
    //}
    }
    func dataretrive(){
        let db = Firestore.firestore()
        db.collection("Coach").addSnapshotListener {(snap , err) in
            if err != nil{
                print("there is an Error")
                return
            }
            let storage = Storage.storage().reference()
                  storage.downloadURL { (url, error) in
                      if error != nil {
                          print((error?.localizedDescription)!)
                          print("error1")
                          return
                  }
                  print("Download success")
                  self.imageURL = url!
              }
            for i in snap!.documentChanges{
                let documentId = i.document.documentID
                let username = i.document.get("name")
                let email = i.document.get("Email ID")
                let Age = i.document.get("Age")
                let image = i.document.get("image")
                let proficient = i.document.get("proficient")
                DispatchQueue.main.async{
                    name.append("\(username!)")
                    EmailID.append("\(email!)")
                    age.append("\(Age!)")
                    imag.append("\(image!)")
                    proficient1.append("\(proficient!)")
                }
            
            }
                
        }
    }
}

struct Coach_Previews: PreviewProvider {
    static var previews: some View {
        Coach()
    }
}
