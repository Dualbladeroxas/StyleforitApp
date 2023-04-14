//
//  HomeView.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/12/23.
//

import SwiftUI

struct HomeView: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    let items = [
        "Merchandise 1",
        "Merchandise 2",
        "Merchandise 3",
        "Merchandise 4",
        "Merchandise 5",
        "Merchandise 6",
        "Merchandise 7",
        "Merchandise 8",
        "Merchandise 9",
        "Merchandise 10"
    ]

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Style For It")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top)
                    .foregroundColor(.purple)

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            VStack {
                                // Replace the Rectangle with the clothing item image
                                Image("Clothing") // Replace "Clothing" with the actual name of your clothing item image in the assets folder
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150, height: 150)
                                    .clipped()
                                    .cornerRadius(8)
                                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.purple, lineWidth: 2))

                                Text(item)
                                    .fontWeight(.medium)
                                    .foregroundColor(.purple)
                            }
                        }
                    }
                    .padding()
                }
            }
            .padding(.bottom)
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}






