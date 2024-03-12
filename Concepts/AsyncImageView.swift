//
//  AsyncImageView.swift
//  PhotoTelekinesis
//
//  Created by Rodolfo Castillo on 15/02/24.
//

import SwiftUI

struct AsyncImageView: View {
    @StateObject private var loader = ImageLoader()
    let urlString: String
    
    var body: some View {
        Group {
            if let image = loader.image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } else {
                // Muestra un indicador de carga o una imagen predeterminada
                ProgressView()
            }
        }
        .onAppear {
            loader.load(fromURL: urlString)
        }
    }
}

