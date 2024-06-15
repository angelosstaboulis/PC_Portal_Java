//
//  CheckBoxModel.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 14/6/24.
//

import Foundation
struct CheckBoxModel:Identifiable{
    let id =  UUID()
    var imageName:String
    var title:String
    var selected:Bool
    var getSelected:String
}
