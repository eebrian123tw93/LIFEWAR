//
//  LoginView.swift
//  LifeWar
//
//  Created by 呂紹瑜 on 2020/5/23.
//  Copyright © 2020 Brian. All rights reserved.
//

import SwiftUI

let grayColor = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))

class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
}

struct LoginView: View {

    @ObservedObject var viewModel = LoginViewModel()


    var body: some View {
        VStack {
            HelloText()
            IconImage()
            UsernameTextField(username: $viewModel.username)
            PasswordTExtField(password: $viewModel.password)
            LoginButton()
        }.padding(16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct HelloText: View {
    var body: some View {
        Text("Hello You!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 28)

    }
}

struct IconImage: View {
    var body: some View {
        Image("icon")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 50)
            .clipped()
            .cornerRadius(25)
            .padding(.bottom, 20)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        TextField("帳號", text: $username)
            .padding()
            .frame(width: 300, height: 50)
            .background(grayColor)
            .cornerRadius(25)
            .padding(.bottom, 20)
    }
}

struct PasswordTExtField: View {
    @Binding var password: String
    var body: some View {
        SecureField("帳號", text: $password)
            .padding()
            .frame(width: 300, height: 50)
            .background(grayColor)
            .cornerRadius(25.0)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Login")
            .font(.system(size: 22))
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black)
            .cornerRadius(25.0)
    }
}

struct LoginButton: View {
    var body: some View {
        Button(action: {
            print("button tapped")
        }, label: {
            LoginButtonContent()
        })
    }
}
