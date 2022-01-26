//
//  sendmail.swift
//  fitness11IOS
//
//  Created by Manpreet Kaur on 2022-01-25.
//

import SwiftUI

struct sendmail: View {
    @State private var firstname:String="";
    @State private var lastname:String="";
    @State private var email:String="";
    @State private var description:String="";
    @State private var showmailview:Bool=false;

    var body: some View {
        VStack{
        HStack{
            Text("Ask for services")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                
                Spacer()
            Image("send")
                .resizable()

                .frame(width:70,height:60)
            

        }
        .padding(20.0)            }
            
            HStack{
                
    
                
                TextField("First Name", text:$firstname )
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.orange.opacity(0.1), radius: 60, x: 10, y: 20)
                    .padding(.vertical)
                
            }
            
            
            
            HStack{
                
                Spacer()
                
                TextField("Last Name", text:$lastname )
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.orange.opacity(0.1), radius: 60, x: 10, y: 20)
                    .padding(.vertical)
                
            }
            
            
            HStack{

                
                TextField("Enter your email",
                          text:$email )
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.orange.opacity(0.1), radius: 60, x: 10, y: 20)
                    .padding(.vertical)
            }
            
            HStack(alignment: .top){
                TextField("Description",
                          text:$description)
                    .padding()
                    .font(.title3).frame(width: 400, height: 200, alignment:.top)
                    
                    .background(Color.white).cornerRadius(50)
                    .shadow(color: Color.orange.opacity(0.1)
                            ,radius: 100, x:10.0, y:20.0)
                
                    }
           Spacer()
            //HStack{
                
                HStack{
                    NavigationLink( destination:ContentView(),isActive: $showmailview ,label: {
                    
                    Text("Send")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 60)
                            .background(Rectangle().fill(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255)).cornerRadius(300))
                    }
               )
                
//                Button(action: {}) {
//                    Text("Send mail")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white)
//
//                        .padding(15)
//                        .padding(.horizontal,60)
//                        .clipShape(Capsule())
//                        .background(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
//                        .cornerRadius(100)
//                }
            }
            }
            }
        
        


struct sendmail_Previews: PreviewProvider {
    static var previews: some View {
        sendmail()
    }
}


