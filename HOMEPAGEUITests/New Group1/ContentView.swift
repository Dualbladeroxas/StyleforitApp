//
//  ContentView.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        TabView {
            // Home tab
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            // Shopping tab
            ShoppingView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
            
            // Camera tab
            CameraView()
                .tabItem {
                    Image(systemName: "camera.fill")
                    Text("Camera")
                }
            
            // Account tab
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
            
            // Checkout tab
            CheckoutView()
                .tabItem {
                    Image(systemName: "creditcard.fill")
                    Text("Checkout")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


