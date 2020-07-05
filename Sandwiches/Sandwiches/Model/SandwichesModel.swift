//
//  SandwichesModel.swift
//  Sandwiches
//
//  Created by ahmed elmemy on 7/4/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import Foundation

struct SandwichesModel:Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount:Int
    var isSpicy:Bool
    
    var imageName:String{return name}
    var thumbilName:String{return name + "thumb"}
    
}


let testData = [
    SandwichesModel(name:"sandwiches1",ingredientCount:4,isSpicy:true),
    SandwichesModel(name:"sandwiches2",ingredientCount:10,isSpicy:true),
    SandwichesModel(name:"sandwiches3",ingredientCount:22,isSpicy:false),
    SandwichesModel(name:"sandwiches4",ingredientCount:24,isSpicy:true),
    SandwichesModel(name:"sandwiches5",ingredientCount:44,isSpicy:false),
    SandwichesModel(name:"sandwiches6",ingredientCount:45,isSpicy:false),
    
]
