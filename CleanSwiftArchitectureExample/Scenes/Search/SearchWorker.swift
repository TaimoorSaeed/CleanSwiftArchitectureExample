//
//  SearchWorker.swift
//  CleanSwiftArchitectureExample
//
//  Created by Evgeniy Antonov on 7/26/18.
//  Copyright (c) 2018 Evgeniy Antonov. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

typealias responseSuccess = (_ response: Cocktail) ->()
typealias responseFailure = (_ response: Error) ->()

class SearchWorker {
    func getRandomCocktail(with success: @escaping responseSuccess, failure: @escaping responseFailure) {
        let manager = APIManager()
        manager.getRandomCocktail(with: { (cocktail) in
            success(cocktail);
        }) { (error) in
            failure(error);
        }
    }
}
