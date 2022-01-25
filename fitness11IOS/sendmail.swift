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

    var body: some View {
        VStack{
        HStack{
            Text("DROP US A LINE")
                .font(.title)
                .fontWeight(.bold)
                
                Spacer()
            Image("review")
                .resizable()
                
                .frame(width:70,height:60)
            

        }
        .padding(20.0)

            HStack{
                Image("email")
                    .resizable().frame(width:180, height:180)

            }
            
            HStack{
                
    
                
                TextField("First Name", text:$firstname )
                    .font(.largeTitle)
            
                    .padding()
                    .frame(maxWidth: .infinity).background(Color.white).cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.1), radius: 100, x:10.0, y: 20)
                    
                
            }
            
            
            
            HStack{
                
                Spacer()
                
                TextField("Last Name", text:$lastname )
                    .font(.largeTitle)
                    .padding()
                    .frame(maxWidth: .infinity).background(Color.white).cornerRadius(70)
                    .shadow(color: Color.black.opacity(0.1), radius: 100, x:10.0, y: 20)
                
            }
            
            
            HStack{

                
                TextField("Enter your email?",
                          text:$email )
                    .font(.largeTitle)
                    .padding()
                .frame(maxWidth: .infinity).background(Color.white).cornerRadius(50)
                .shadow(color: Color.black.opacity(0.1), radius: 100, x:10.0, y: 20)
                
            
            }
            
            HStack(alignment: .top){
                TextField("Description",
                          text:$email )
                    .padding()
                    .font(.largeTitle).frame(width: 400, height: 200, alignment:.top)
                    
                    .background(Color.white).cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.1)
                            ,radius: 100, x:10.0, y:20.0)
                
                    }
            Spacer()
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Send mail")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.vertical)
                        .padding(.horizontal,60)
                        .clipShape(Capsule())
                        .background(Color.blue)
                        .cornerRadius(100)
                }
            }
            }
            }
        
        }

struct sendmail_Previews: PreviewProvider {
    static var previews: some View {
        sendmail()
    }
}


