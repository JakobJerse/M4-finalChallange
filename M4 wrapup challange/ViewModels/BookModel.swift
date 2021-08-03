//
//  BookModel.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    /// Update the specified book's rating. Does nothing if `forId` is invalid.
     func updateRating(forId: Int, rating: Int) {
        
        // books.firstIndex(where: loopa cez tabelo knjig in isce prvo z id-jem, ki je enak danemu id-ju. $0 je posamezna knjiga v obhodu zanke
         if let index = books.firstIndex(where: { $0.id == forId }) {
             books[index].rating = rating
         }
     }
     
     /// Update the specified book's favourite status. Does nothing if `forId` is invalid.
     func updateFavourite(forId: Int) {
         // Finds the first book who has the same bookid as passed index
         if let index = books.firstIndex(where: { $0.id == forId }) {
             books[index].isFavourite.toggle()
         }
     }
}
