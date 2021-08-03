//
//  BookCardView.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import SwiftUI

struct BookCardView: View {
    
    let book:Book
    
    var body: some View {
        
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(book.title)
                            .font(.title)
                            .bold()
                            .padding(.bottom, 5)
                        
                        Spacer()
                        
                        if(book.isFavourite) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.yellow)
                        }
                    }
                    
                    Text(book.author)
                        .font(.body)
                        .fontWeight(.light)
                        .padding(.bottom)

                    Image(book.image)
                        .resizable()
                        .clipped()
                        .scaledToFit()
                }
                .padding()
                
            }
            .frame(width: 350, height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookCardView(book: model.books[0])
    }
}
