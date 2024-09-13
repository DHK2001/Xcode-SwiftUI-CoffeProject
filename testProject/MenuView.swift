//
//  MenuView.swift
//  testProject
//
//  Created by Derek H. Galeas on 2/8/24.
//

import SwiftUI

struct MenuView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var menu: Menu
    
    @State private var searchText = ""
    
    let coulmns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: coulmns, pinnedViews: .sectionHeaders) {
                    ForEach(menu.sections) { section in
                        Section() {
                            ForEach(section.matches(for: searchText)) { drink in
                                NavigationLink {
                                    CustomizeView(drink: drink) {
                                        dismiss()
                                    }
                                } label : {
                                    VStack {
                                        Image(drink.image)
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(10)
                                        
                                        Text(drink.name)
                                            .font(.system(.body, design: .serif))
                                    }
                                    .padding(.bottom)
                                }
                                .buttonStyle(.plain)
                            }
                        } header: {
                            Text(section.name)
                                .font(.system(.title, design: .serif))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.top, .bottom, .trailing], 5)
                                .background(.background)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Add Drink")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    MenuView()
        .environmentObject(Menu())
}
