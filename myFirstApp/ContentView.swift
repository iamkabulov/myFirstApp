//
//  ContentView.swift
//  myFirstApp
//
//  Created by Кабулов Нурсултан Пернебаевич on 22.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.18, green: 0.80, blue: 0.44, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("image").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 250)
                Text("KABULOV NURSULTAN")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                
                Text("IOS developer")
                    .font(.body)
                    .fontWeight(.regular)
                    .padding()
                Divider()
                Contact(image: "phone.fill", info: "+77073235846")
                Contact(image: "envelope.fill", info: "iamkabulov@gmail.com")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Contact: View {
    let image: String
    let info: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame( height: 50).overlay(HStack {
            Image(systemName: image)
            Text(info).fontWeight(.semibold)
        }.foregroundColor(Color(red: 0.18, green: 0.80, blue: 0.44)))
    }
}
