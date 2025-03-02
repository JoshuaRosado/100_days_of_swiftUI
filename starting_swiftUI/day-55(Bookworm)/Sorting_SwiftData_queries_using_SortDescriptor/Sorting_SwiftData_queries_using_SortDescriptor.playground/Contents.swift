import UIKit

// Sorting_SwiftData_queries_using_SortDescriptor

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    // Property of the Source
    // sort: \Class.property, order: .order)        `
    // Sorting the data we're receiving from query
    // @Query(sort: \Book.rating, order: .reverse)var books: [Book]
    @Query(sort: \Book.rating, order: .reverse)var books: [Book]
    
    
    //Returning an Array using [SortDescriptor]
    //If we select Book.title
    // All the books with the same title will be return inside this Array
    
    
    @Query(sort: [SortDescriptor(\Book.title, order: .reverse)])var books2: [Book]
    
    // Sorting using 2 or more filters
    
    @Query(sort: [SortDescriptor(\Book.title), SortDescriptor(\Book.author)]) var books3: [Book]
    

