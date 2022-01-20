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
    
    var body: some View {
        NavigationView{
            VStack{
                //title//
                VStack{
                    Spacer()
                    HStack{
                        Text("HOMEPAGE")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer()
                        
                            Image("home")
                            .resizable()
                            .frame(width:60,height: 60.0)
                    }
                    .background(Color.white)
                    HStack{
                                        
                        VStack{
                            NavigationLink( destination:ListofExercise(),isActive: $showexercisepage ,label: {
                                VStack{
                            Image("workout-machine (1)")
                           .resizable().aspectRatio(contentMode:.fit)
                            
                            Text("EXERCISES")
                                .font(.title)
                                .fontWeight(.bold)}
                            }
                            
                   ) }
                    
                        .background(Color.white)
            
                        VStack{
                            NavigationLink( destination:bmi(),isActive: $showbmipage ,label: {
                                VStack{
                                    Image("calculator (1)").resizable().aspectRatio(contentMode:.fit)
                                    Text(" BMI ")
                                        .font(.title)
                                        .fontWeight(.bold)}
                            
                            }
                                        
                                            )}

                        
                    
                    .background(Color.white)
                }
                    HStack{
                        VStack{
                            NavigationLink( destination:ListofExercise(),isActive: $showexercisepage ,label: {
                        
                        VStack{
                            
                            Image("coach")
                                .resizable().aspectRatio(contentMode:.fit)
                            
                            Text("TRAINER")
                                .font(.title)
                                .fontWeight(.bold)}
                                            }
                                            
                                   ) }
                        .background(Color.white)
                        
                        VStack{
                            NavigationLink( destination:Coach(),isActive: $showecoachpage ,label: {
                        
                        VStack{
                           
                            
                                Image("review")

                                    .resizable().aspectRatio(contentMode:.fit)
                            
                            
                            Text("SEND EMAIL")
                                .font(.title)
                                .fontWeight(.bold)}
                                
                            }
                                        
                                            )
                    }
                        .background(Color.white)
                        

                        
                }
                    HStack{
                        
                        VStack{
                            NavigationLink( destination:Coach(),isActive: $showecoachpage ,label: {
                        
                        
                        VStack{
                            
                            Image("man")
                                .resizable().frame(width:200, height:200)
                                
                            Text("ABOUT US")
                                .font(.title)
                                .fontWeight(.bold)}
                                            
                                            }
                                                        
                                                            )
                                    }
                        .background(Color.white)
                        
                        
                }
                    Spacer()
                    
            }
                
                .background(Color.white)
                .padding()
               
        }
            .edgesIgnoringSafeArea(.all)
        
            
        
        }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
    HomePage()
    }
}
}




