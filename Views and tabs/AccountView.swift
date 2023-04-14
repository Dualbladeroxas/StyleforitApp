//
//  AccountView.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/12/23.
//

// AccountView.swift
import SwiftUI

struct AccountView: View {
    var body: some View {
    
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.top, 50)
                    .foregroundColor(.purple)
                
                Text("John Doe")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                
                Text("Username123")
                    .font(.callout)
                    .foregroundColor(.purple)
                
                Text("Account created: \(Date(), formatter: dateFormatter)")
                    .font(.callout)
                    .foregroundColor(.purple)
                    .padding(.top, 10)
                
                Button(action: {
                    // Implement settings action here
                }) {
                    Text("Settings")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
                
                Button(action: {
                    // Implement privacy action here
                }) {
                    Text("Privacy")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter
}()

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}


