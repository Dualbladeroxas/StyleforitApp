//
//  SearchView.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/13/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var filteredBrands: [String] = []
    
    let clothingBrands = [
        "Nike",
        "Adidas",
        "Puma",
        "Under Armour",
        "Reebok",
        "New Balance",
        "ASICS",
        "Converse",
        "Vans",
        "Champion"
    ]

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    TextField("Search", text: $searchText)
                        .padding(7)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .foregroundColor(.purple)
                        .onChange(of: searchText) { value in
                            if value.isEmpty {
                                filteredBrands = []
                            } else {
                                filterBrands(searchText: value)
                            }
                        }

                    if !searchText.isEmpty {
                        Text("Recent")
                            .font(.headline)
                            .foregroundColor(.purple)
                            .padding(.top)
                    }

                    List(filteredBrands, id: \.self) { brand in
                        Text(brand)
                            .foregroundColor(.purple)
                    }

                    Spacer()
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Search")
                        .font(.system(size: 24))
                        .foregroundColor(.purple)
                }
            }
        }
    }

    private func filterBrands(searchText: String) {
        filteredBrands = clothingBrands.filter { brand in
            brand.lowercased().contains(searchText.lowercased())
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


