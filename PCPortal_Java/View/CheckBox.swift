//
//  CheckBox.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 18/5/22.
//

import SwiftUI
struct CheckBox: View {
    @Binding var checkBox:CheckBoxModel
    var body: some View {
        HStack{
            Button {
                checkBox.getSelected = checkBox.title
                checkBox.imageName = "square"
            } label: {
                HStack{
                    Image("square").border(.white, width: 1).background(Rectangle().foregroundColor(checkBox.selected ? .red : .orange))
                    Text(checkBox.title).padding(5).foregroundColor(.white)
                }
            }.background(Rectangle().foregroundColor(.clear))
        }
    }
}

