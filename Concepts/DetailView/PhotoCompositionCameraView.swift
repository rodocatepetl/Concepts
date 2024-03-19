//
//  PhotoCompositionCameraView.swift
//  Concepts
//
//  Created by Rodolfo Castillo on 18/03/24.
//

import SwiftUI

struct PhotoCompositionCameraView: View {
    private var overlayName: String = ""
    
    init(overlayName: String) {
        self.overlayName = overlayName
    }

    var body: some View {
        GeometryReader { reader in
            let width = reader.size.width
            let height = width * 3/2
            ZStack {
                CameraView().toolbar(.hidden, for: .navigationBar)
                Image(overlayName)                
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(90)) // Rota la imagen 90 grados
                    .frame(width: width, height: height)
                    .clipped()
            }.ignoresSafeArea(.all, edges: .all)
        }
    }
}

struct PhotoCompositionCameraView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCompositionCameraView(overlayName: CompositionManager.shared.compositions.randomElement()?.overlay.randomElement() ?? "goldenRatio")
    }
}


