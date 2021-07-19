//
//  ContentView.swift
//  MeeCard
//
//  Created by André Yamasaki on 19/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea(.all)
            VStack {
                Image("profileImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue, lineWidth: 5.0))
                Text("Name Here")
                    .font(Font.custom("Yomogi-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(
                        .system(size: 25))
                Divider()
                InfoView(text: "Tel: 55-99999-9999", imageName: "phone.fill")
                InfoView(text: "my@email.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


