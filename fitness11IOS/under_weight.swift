//
//  ContentView.swift
//  under_weight
//
//  Created by jatinder kaur on 2022-01-19.
//

import SwiftUI

struct under_weight: View {
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false, content:{
                VStack{
                        Text("Foods to gain weight")
                            .font(.largeTitle)
                            .padding()
                    HStack{
                        Image("rice")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                            //.padding(2)
                        VStack{
                            Text("Rice")
                                .font(.largeTitle)
                                .padding(1)
                            Text("130 calories, 28 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("0.3 gram fat, 2.7 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 0.1 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("whole eggs")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                            //.padding(2)
                        VStack{
                            Text("Whole Eggs")
                                .font(.largeTitle)
                                .padding(1)
                            Text("low calories, no carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("5 gram fat, 7 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and no sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("avacado")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 140, height: 140)
                            //.padding(2)
                        VStack{
                            Text("Avocados")
                                .font(.largeTitle)
                                .padding(1)
                            Text("160 calories, 9 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("15 gram fat, 9 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 0.7 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("cheese")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                            //.padding(2)
                        VStack{
                            Text("Cheese")
                                .font(.largeTitle)
                                .padding(1)
                            Text("402 calories, 1.3 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("33 gram fat, 25 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 0.5 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("bananas")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Bananas")
                                .font(.largeTitle)
                                .padding(1)
                            Text("89 calories, 23 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("0.3 gram fat, 1.1 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 12 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    
                    HStack{
                        Image("chicken")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                            //.padding(2)
                        VStack{
                            Text("Chicken")
                                .font(.largeTitle)
                                .padding(1)
                            Text("165 calories, no carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("3.6 gram fat, 31 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 0 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("red meat")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Red Meat")
                                .font(.largeTitle)
                                .padding(1)
                            Text("300 calories, no carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("high fat, 25 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and no  sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("driedfruits2")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Dried fruits")
                                .font(.largeTitle)
                                .padding(1)
                            Text("359 calories, 83 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("2.7 gram fat, 1 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 58 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                    HStack{
                        Image("pasta2")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                            //.padding(2)
                        VStack{
                            Text("Pasta")
                                .font(.largeTitle)
                                .padding(1)
                            Text("131 calories, 25 g carbohydrates,"
                                        )
                                .font(.subheadline)
                                                       Text("1.1 gram fat, 5 g protein,"
                                                )
                                .font(.subheadline)
                                                       Text("and 4.8 grams sugar."
                                                        )
                                .font(.subheadline)
                                        
                        }
                        .padding(2)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(RoundedRectangle(cornerRadius: 80).fill(Color.white).shadow(radius: 10))
                    .padding(5)
                    
                }
            
        }
                       
                        
                       )
            
 }
 }
}

struct under_weight_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

