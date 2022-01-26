//
//  ContentView.swift
//  diet plan
//
//  Created by jatinder kaur on 2022-01-12.
//

import SwiftUI

struct diet_plan: View {
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false, content:{
                VStack{
                    Text("Foods for weight loss").foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                        .font(.largeTitle).bold()
                            .padding()
                    HStack{
                        Image("egg")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                            //.padding(2)
                        VStack{
                            Text("Eggs").font(.largeTitle).bold()
                                .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("75 calories, 2 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("5 gram fat, 7 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 1.1 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("apples")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                            //.padding(2)
                        VStack{
                            Text("Apples")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("95 calories, 25 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("0 gram fat, 1 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 19 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("wheat22")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 140, height: 140)
                            //.padding(2)
                        VStack{
                            Text("Wheat")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("300 calories, 40 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("1.7 gram fat, 6 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 0.4 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("almon")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                            //.padding(2)
                        VStack{
                            Text("Almonds")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("165 calories, 6.11 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("14.2 gram fat, 7 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 1.23 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("figs")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Figs")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("37 calories, 6.5 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("1 gram fat, 3 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 48 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    
                    HStack{
                        Image("lemons")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                            //.padding(2)
                        VStack{
                            Text("Lemons")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("29 calories, 9 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("0.3 gram fat, 1.1 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 2.5 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("popco")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Popcorn")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("375 calories, 74 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("4.3 gram fat, 11 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 0.9 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("cacao")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Cacao")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("75 calories, 2 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("5 gram fat, 7 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 1.1 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("potatoes")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Potatoes")
                                .font(.largeTitle).bold()
                                    .foregroundColor(Color(red: 223 / 255, green: 93 / 255, blue: 6 / 255))
                                .padding(1)
                            Text("77 calories, 17 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("0 gram fat, 2 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 90 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(color: Color.orange.opacity(0.5), radius: 10))
                    .padding(5)
                    //.shadow(color: Color.orange.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                }
            
        }
                       
                        
                       )
            
 }
 }
}

struct diet_plan_Previews: PreviewProvider {
    static var previews: some View {
        diet_plan()
    }
}

