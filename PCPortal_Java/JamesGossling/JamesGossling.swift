//
//  JamesGossling.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI

struct JamesGossling: View {
    @StateObject var biography = BiographyViewModel()

    var body: some View {
        ScrollView{
            Image(uiImage: UIImage(named: "pcportal")!).resizable()
            Image(uiImage: UIImage(named: "gossling")!).resizable()
            Text(biography.createBiography().biography).foregroundColor(.white).font(Font.custom("System", fixedSize: 12))
        }.background(Rectangle().foregroundColor(.accentColor))
    }
}

struct JamesGossling_Previews: PreviewProvider {
    static var previews: some View {
        JamesGossling()
    }
}
