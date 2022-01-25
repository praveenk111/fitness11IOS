//
//  HomePage.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct HomePage: View {
    
    
    @State var showbmipage: Bool = false
    @State var showexercisepage: Bool = false
    @State var showecoachpage: Bool = false
    @State var showaboutuspage: Bool = false
    @State var showsigninpage: Bool = false
   
    
    
    func Signout(){
       let firebaseAuth = Auth.auth()
      do {
        try firebaseAuth.signOut()
          self.showsigninpage = true
         // self.Signout()
        print("signout successful")
          
      } catch let signOutError as NSError {
        print("Error signing out: %@", signOutError)
      }
   }
    
    var body: some View {
        NavigationLink( destination:SignInPage(),isActive: $showsigninpage, label: {EmptyView() })
     //  NavigationView{
            
            VStack{
                //title//
                VStack{
                    
//                    HStack{
//                        Text("HOMEPAGE")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color.black).padding()
//
//
//                        Spacer()
//                        Spacer()
//                        Spacer()
//
//                        Image("home")
//                            .resizable()
//                            .frame(width:40,height: 40.0)
//                        Spacer()
//
//
//                    }
//                    Spacer()
                    
                //.background(Color.white)
                    HStack{
                        
                        
                        VStack{
                            NavigationLink( destination:ListofExercise(),isActive: $showexercisepage ,label: {
                                VStack{
                                    Image("barbell")
                                    //.resizable().frame(width:120, height:120)
                                        .resizable().aspectRatio(contentMode:.fit).padding().padding()
                                    
                                    Text("EXERCISES")
                                        .font(.callout)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                }
                            }
                                            
                            ) }
                        
                        // .background(Color.white)
                        
                        VStack{
                            NavigationLink( destination:bmi_UI(),isActive: $showbmipage ,label: {
                                VStack{
                                    Image("bmi (1)").resizable().aspectRatio(contentMode:.fit).padding().padding()
                                    Text(" BMI ")
                                        .font(.callout)
                                        .foregroundColor(Color.black)
                                    .fontWeight(.bold)}
                                
                            }
                                            
                            )}
                        
                        
                        //.background(Color.white)
                    }
                Spacer()
                
                    
                    HStack{
                        
                        VStack{
                            NavigationLink( destination:Coach(),isActive: $showecoachpage ,label: {
                                
                                VStack{
                                    
                                    Image("coach (1)")
                                        .resizable().aspectRatio(contentMode:.fit).padding().padding()
                                    
                                    Text("TRAINER")
                                        .font(.callout)
                                        .foregroundColor(Color.black)
                                    .fontWeight(.bold)}
                            }
                                            
                            )}
                        
                        // .background(Color.white)
                        
                        HStack{
                            
                            NavigationLink( destination:Coach(),isActive: $showecoachpage ,label: {
                                
                                VStack{
                                    
                                    Image("send")
                                    
                                        .resizable().aspectRatio(contentMode:.fit).padding().padding()
                                    
                                    
                                    Text("SEND EMAIL")
                                        .font(.callout)
                                        .foregroundColor(Color.black)
                                        .fontWeight(.bold)
                                    
                                }
                                
                            }
                            )
                        }
                        //.background(Color.white)
                    }
                    Spacer()
                    //HStack{
                    
                    VStack{
                        NavigationLink( destination:about_us(),isActive: $showaboutuspage ,label: {
                            
                            
                            VStack{
                                
                                Image("teamwork")
                                // .resizable().frame(width:120, height:120)
                                    .resizable().aspectRatio(contentMode:.fit).padding().padding()
                                
                                Text("ABOUT US")
                                    .font(.callout)
                                    .foregroundColor(Color.black)
                                .fontWeight(.bold)}
                            
                        })
                        
                        
                        Spacer()
                    }
                    Button {
                       Signout()
                        //HomePage()
                        } label: {
                        Text("LOgout")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(200)
                    }
                        
                    }
                            //.background(Color.white)
                    
                    // }
                    //
                    
                    
                   // Spacer()
                    
                    
                }
                
                
                
                .background(Color.white)
                //.padding()
                .navigationTitle(Text("HOMEPAGE"))
                
            //}
            //.edgesIgnoringSafeArea(.bottom)
            .background(Color.gray)
            
            
        }
        
    
         
       
}

    

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
    HomePage()
    }
}

class UserSettings: ObservableObject { @Published var loggedIn : Bool = false }


