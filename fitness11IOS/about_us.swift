//
//  About us.swift
//  about_us
//
//  Created by jatinder kaur on 2021-12-22.
//

import SwiftUI

struct about_us: View {
    var body: some View {
       //NavigationView {
           VStack{
               Text("Our Team")
                   .bold()
                   .font(.largeTitle).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                
                   
               Text("'We are continously trying to improve our work to provide the user an awesome experience. Our goal is to give better and relevant result to our customers.'")
                   .fontWeight(.bold)
                   .padding(8)
                   .font(.callout).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                   .multilineTextAlignment(.leading)
               ScrollView(.horizontal, showsIndicators: false, content:{
            
                   HStack{
                       VStack{
                           Image("img1")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("2092193").fontWeight(.bold).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("Jatinder").fontWeight(.bold).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.").fontWeight(.bold).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 350, height: 235)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3)
                               .padding())
                       }
                       VStack{
                           Image("img2")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("123456").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("Manpreet").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                       VStack{
                           Image("img3")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("123456").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("Saipreethi").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                       VStack{
                           Image("img4")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("2092164").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("Praveen").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.").bold().foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 76 / 255))
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                   }
               } )
          // }
            //.navigationTitle("Our Team")
            .lineSpacing(4)
       }

    }
}

struct about_us_Previews: PreviewProvider {
    static var previews: some View {
        about_us().previewDevice("iPhone 13 Pro")
    }
}
    

