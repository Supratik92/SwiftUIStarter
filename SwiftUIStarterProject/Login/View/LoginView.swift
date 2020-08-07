//
//  LoginView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 28/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var isValid = false
    @State private var showAlert = false
    @State var isNavBarHidden: Bool = true
    private var loginViewModel = LoginViewModel()

    // MARK: - View
    var body: some View {
        NavigationView {
            ZStack {
            VStack() {
                Text("Login to Swift UI")
                    .font(.largeTitle).foregroundColor(Color.white)
                    .padding([.top, .bottom], 40)
                    .shadow(radius: 10.0, x: 20, y: 10)

                Image("image1")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10.0, x: 20, y: 10)
                    .padding(.bottom, 100)

                VStack(alignment: .leading, spacing: 15) {
                    TextField("Email", text: self.$email)
                        .padding()
                        .background(Color.textFieldTheme)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)

                    SecureField("Password", text: self.$password)
                        .padding()
                        .background(Color.textFieldTheme)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                        .padding(.bottom, 20)
                    HStack {
                        Spacer()
                        Text("Forgot Password ?")
                            .font(.body).foregroundColor(.blue)

                    }

                }.padding([.leading, .trailing], 27.5)


                NavigationLink(destination: SwitcherView(), isActive: $isValid) {
                    EmptyView()
                }

                Button(action: {self.loginButtonAction()}) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                }.padding(.top, 50)

                Spacer()
                HStack(spacing: 0) {
                    Text("Donot have an account? ")
                    Button(action: {}) {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                    }
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
                .alert(isPresented: $showAlert) { () -> Alert in
                    Alert(title: Text("Credential Verification Failed"),
                          message: Text("Invalid email or password"),
                          dismissButton: .default(Text("Okay!")))
            }
        }
        .onAppear() { self.isNavBarHidden = true }
        .onDisappear() { self.isNavBarHidden = false }
        .navigationBarHidden(isNavBarHidden)
        }

    }

    /// Check for valid inputs
    private func loginButtonAction() {
        if loginViewModel.isValidEmail(email) == true
            && loginViewModel.isValidPassword(password) == true {
            isValid = true
            showAlert = false
        } else {
            isValid = false
            showAlert = true
        }
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
