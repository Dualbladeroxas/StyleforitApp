//
//  CheckoutView.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/13/23.
//

import SwiftUI

struct CheckoutView: View {
    let itemName: String
    let itemPrice: Double
    let shippingCost: Double
    let taxRate: Double
    
    var tax: Double {
        return itemPrice * taxRate
    }
    
    var totalPrice: Double {
        return itemPrice + shippingCost + tax
    }
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Cart")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                
                HStack {
                    Image("SampleImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                    
                    Text(itemName)
                        .foregroundColor(.purple)
                    
                    Spacer()
                    
                    Text("$\(itemPrice, specifier: "%.2f")")
                        .foregroundColor(.purple)
                }
                
                HStack {
                    Text("Shipping")
                        .foregroundColor(.purple)
                    Spacer()
                    Text("$\(shippingCost, specifier: "%.2f")")
                        .foregroundColor(.purple)
                }
                
                HStack {
                    Text("Tax")
                        .foregroundColor(.purple)
                    Spacer()
                    Text("$\(tax, specifier: "%.2f")")
                        .foregroundColor(.purple)
                }
                
                Divider()
                    .background(Color.purple)
                
                HStack {
                    Text("Total")
                        .bold()
                        .foregroundColor(.purple)
                    Spacer()
                    Text("$\(totalPrice, specifier: "%.2f")")
                        .bold()
                        .foregroundColor(.purple)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(itemName: "Sample Item", itemPrice: 29.99, shippingCost: 5.99, taxRate: 0.07)
    }
}

