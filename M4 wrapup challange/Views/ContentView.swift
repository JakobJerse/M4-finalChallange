//
//  ContentView.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import SwiftUI

// Main - Library View
struct ContentView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        NavigationView { // da Navigation link deluje moramo imeti vse skupaj znotraj NavigationView!
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(model.books) { book in
                            NavigationLink(
                                destination: BookDetailView(book: book),
                                label: {
                                    BookCardView(book: book)
                                        .padding()
                                })
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top)
                }
                .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
