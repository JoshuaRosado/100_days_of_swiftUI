import UIKit
import Foundation

// HOW TO HANDLE FUNC FAILURE WITH OPTIONALS
// This is to know if the func works or not
// It won't show you what errors has

enum UserError: Error{
    case badID, networkFailed
}

func getUser(id : Int) throws -> String{
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23){
    print("User: \(user)")
}


let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
