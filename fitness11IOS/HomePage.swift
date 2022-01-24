//
//  HomePage.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI

struct HomePage: View {
    
    @State var showbmipage: Bool = false
    @State var showexercisepage: Bool = false
    @State var showecoachpage: Bool = false
    @State var showaboutuspage: Bool = false
    
    var body: some View {
        NavigationView{
            
            VStack{
                //title//
                VStack{
                    
                HStack{
                         Text("HOMEPAGE")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black).padding()
                           
                          
                         Spacer()
                    Spacer()
                    Spacer()
                        
                            Image("home")
                             .resizable()
                            .frame(width:40,height: 40.0)
                    Spacer()
                    
                    
                    }
                    Spacer()
                    
                        //.background(Color.white)
                    HStack{
                        
                                        
                        VStack{
                            NavigationLink( destination:ListofExercise(),isActive: $showexercisepage ,label: {
                                VStack{
                            Image("barbell")
                                        //.resizable().frame(width:120, height:120)
                                        .resizable().aspectRatio(contentMode:.fit).padding()
                            
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
                                    Image("bmi (1)").resizable().aspectRatio(contentMode:.fit).padding()
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
                            NavigationLink( destination:ListofExercise(),isActive: $showexercisepage ,label: {
                        
                        VStack{
                            
                            Image("coach (1)")
                                .resizable().aspectRatio(contentMode:.fit).padding()
                            
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

                                .resizable().aspectRatio(contentMode:.fit).padding()
                            
                            
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
                    //HStack{
                        
                        VStack{
                            NavigationLink( destination:about_us(),isActive: $showaboutuspage ,label: {
                        
                        
                        VStack{
                            
                            Image("teamwork")
                              // .resizable().frame(width:120, height:120)
                                .resizable().aspectRatio(contentMode:.fit).padding()
                                
                            Text("ABOUT US")
                                .font(.callout)
                                .foregroundColor(Color.black)
                                .fontWeight(.bold)}
                                            
                                            })
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            }
                            Spacer()
                                    }
                        //.background(Color.white)
                        
               // }
                    //
                
                    
                    Spacer()
                    Spacer()
                    
            }
        
                
                .background(Color.gray)
            //.padding()
               
        }
            .edgesIgnoringSafeArea(.bottom)
        
            
        
        }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
    HomePage()
    }
}
}




