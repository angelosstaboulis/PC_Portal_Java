//
//  History-Java.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI
import AVKit
struct History_Java: View {
    var body: some View {
        VStack{
            Image(uiImage: UIImage(named: "pcportal")!).resizable().fixedSize()
            VideoPlayer(player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "videoplayback", ofType: "mp4")!)))
        }.background(Rectangle().foregroundColor(.accentColor))
    }
}

struct History_Java_Previews: PreviewProvider {
    static var previews: some View {
        History_Java()
    }
}
