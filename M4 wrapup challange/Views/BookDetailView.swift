//
//  BookDetailView.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import SwiftUI

struct BookDetailView: View {
    
    
    @EnvironmentObject var model:BookModel
    @State var rateIndex = 2
    
    
    let book:Book
    
    var body: some View {
        
            VStack(spacing: 20) {
                NavigationLink(
                    destination: BookContentView(book: book),
                    label: {
                        VStack {
                            Text("Read Now!")
                                .foregroundColor(.black)
                                .font(.title)
                            
                            Image(book.image)
                                .resizable()
                                .frame(width: 200, height: 300, alignment: .center)
                                .padding()
                        }
                    })
                
                    Text("Mark for later!")
                        .font(.headline)
                
                Button(action: { model.updateFavourite(forId: book.id) }) {
                    Image(systemName: book.isFavourite ? "star.fill" : "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                }
                .accentColor(.yellow)
                
                
                    Text("Rate \(book.title)")
                        .font(.headline)
                    
                    Picker("Rate this book!", selection: $rateIndex) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding([.leading, .trailing, .bottom], 60)
                    .onChange(of: rateIndex, perform: { value in
                        model.updateRating(forId: book.id, rating: rateIndex)
                    })
            }
            .onAppear {rateIndex = book.rating}
            .navigationBarTitle("\(book.title)")
        }
    }

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let brao = BookModel()
        BookDetailView(book: brao.books[0])
            .environmentObject(BookModel())
    }
}
