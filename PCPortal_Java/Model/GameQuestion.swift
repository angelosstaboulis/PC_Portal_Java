//
//  GameQuestion.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import Foundation
struct GameQuestion:Identifiable{
    let id =  UUID()
    let imageName:String
    let label:String
    let answer1:String
    let answer2:String
    let answer3:String
    let selected1:String
    let selected2:String
    let selected3:String
    var selected11:Bool
    var selected21:Bool
    var selected31:Bool
    let corectAnswer:String
}
