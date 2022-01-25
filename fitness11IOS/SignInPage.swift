

import SwiftUI
import Firebase
import AuthenticationServices

struct SignInPage: View {
    @State var isLoginMode = false
    @State private var email1: String = ""
    @State private var password1: String = ""
    
    @State var showhomepage: Bool = false
    
    @Environment(\.colorScheme) var colorSchema
    @AppStorage("email") var   email: String = ""
    @AppStorage("firstName") var  firstName : String = ""
    @AppStorage("lastName") var   lastName: String = ""
    @AppStorage("userId") var   userId : String = ""
    
    var body: some View {
        NavigationView{
        ZStack {
            NavigationLink( destination:HomePage(),isActive: $showhomepage, label: {EmptyView() })
            
            
            
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                        
                                        
                    TextField("Enter Your Email", text: $email1)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Passwprd
                    SecureField("Enter Your Password", text: $password1)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    

                    
                    NavigationLink(
                        destination: ForgotPassword().navigationBarHidden(true),
                        label: {
                            Text("Forgot Password?")
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: 300)
                                .padding()
                                .cornerRadius(200)
                                .foregroundColor(Color.black)


                        })
                        .navigationBarHidden(true)

                    
                    
                    Button {
                       loginUser()
                        //HomePage()
                        } label: {
                        Text("Login")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(200)
                    }
                    
                        Text("OR")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                            .padding(.top,20)
                        .padding(.vertical)

                    NavigationLink(
                        destination: SignUpPage().navigationBarHidden(true),
                        label: {
                            Text("Sign Up")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(200)
                        })
                        .navigationBarHidden(true)
                    
                    VStack{
                        if userId.isEmpty{
                            SignInWithAppleButton(.continue) { request  in
                                
                                request.requestedScopes = [.email, .fullName]
                            } onCompletion: { result in
                                
                                switch result{
                                case .success(let auth):
                                    switch auth.credential {
                                    case let credential as ASAuthorizationAppleIDCredential:
                                        let userid = credential.user
                                        let email = credential.email
                                        let firstName = credential.fullName?.givenName
                                        let lastName = credential.fullName?.familyName
                                        
                                        self.email = email ?? ""
                                        self.userId = userid
                                        self.firstName = firstName ?? ""
                                        self.lastName = lastName ?? ""
                                    default:
                                        break
                                    }
                                case .failure(let error):
                                    print(error)
                                }
                                
                            }
                            .frame(height:50)
                                .padding()
                                .cornerRadius(8)                }else{
                            //signed in
                                    NavigationLink(destination: HomePage(), label: {EmptyView() })
                        }
                    }                }
                
                Spacer()
            }
            .padding()
        }
           
        }
    }

    @State var loginStatusMessage = ""
private func loginUser(){
    Auth.auth().signIn(withEmail: email1, password: password1){ result,err in
        if let err = err{
            print("Failed to login user:",err)
            self.loginStatusMessage = "Failed to login user: \(err)"
            return
        }
        self.showhomepage = true
        print("Successfully logged in as a user: \(result?.user.uid ?? "")")
        self.loginStatusMessage = "Successfully logged in as a user: \(result?.user.uid ?? "")"
        
    }
}

}
struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}

