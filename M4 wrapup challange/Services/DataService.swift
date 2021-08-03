//
//  DataService.swift
//  M4 wrapup challange
//
//  Created by Jakob Jerse on 02/08/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
    
        // Create a stringPath to the local json file
        let stringPath = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // Check if optional stringPath is == nil
        if(stringPath == nil) {
            return [Book]() // Return an empty array of Books
        }
        
        // Create an URL object
        let url = URL(fileURLWithPath: stringPath!)
        
        do {
            // Create an Data object
            let data = try Data(contentsOf: url)
            
            // decode the data using json decoder
            let decoder = JSONDecoder()
            
            do {
                let bookData = try decoder.decode([Book].self, from: data)
                
                return bookData

            }
            catch {
                // error while parsing json
                print(error)
            }
            
        }
        catch {
            // error getting data
            print(error)
        }
        
        return [Book]()
    }
}
