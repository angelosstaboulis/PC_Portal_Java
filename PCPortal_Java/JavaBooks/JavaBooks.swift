//
//  JavaBooks.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI

struct JavaBooks: View {
    @StateObject var booksViewModel = BooksViewModel()

    var body: some View {
        ScrollView{
            Image(uiImage: UIImage(named: "pcportal")!).resizable()
            Text(booksViewModel.createBooks().books).font(Font.body).foregroundColor(.white)
        }.background(Rectangle().foregroundColor(.accentColor))
    }
}

struct JavaBooks_Previews: PreviewProvider {
    static var previews: some View {
        JavaBooks()
    }
}
