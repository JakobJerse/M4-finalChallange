//
//  BookContentView.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import SwiftUI

struct BookContentView: View {
    
    let book:Book
    @State var pageIndex = 0
    
    var body: some View {
        VStack {
            TabView (selection: $pageIndex) {
                ForEach(0..<book.content.count) { index in
                    Text(book.content[index])
                        .tag(index)
                }
                .padding()
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Text(String(pageIndex + 1))
        }
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookContentView(book: model.books[0])
    }
}
