//
//  Book.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import Foundation

struct Book: Identifiable, Decodable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    var image:String
    
}
