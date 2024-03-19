import SwiftUI

struct PhotoCompDetailView: View {
    
    @ObservedObject var orientationManager = OrientationManager.shared
    @State private var image: UIImage?
    @State private var showCamera = false
    
    var photoComp: PhotoComp

    var body: some View {
        CameraAccessView()
           Group {
               if orientationManager.orientation.isLandscape {
                   // Tu vista de cámara aquí
                   PhotoCompositionCameraView(overlayName: photoComp.overlay.first ?? "")
               } else {
                   // Otra vista para orientación vertical
                   portraitView()
               }
           }
           .onAppear {
               UIDevice.current.beginGeneratingDeviceOrientationNotifications()
           }
           .onDisappear {
               UIDevice.current.endGeneratingDeviceOrientationNotifications()
           }
       }
}

extension PhotoCompDetailView {
    func portraitView() -> some View {
        return GeometryReader { reader in
            let overlayWidth = reader.size.width - 30
            let overlayHeight = overlayWidth * (2/3)
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text(photoComp.nombre)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)

                    // ScrollView horizontal para los overlays
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(photoComp.overlay, id: \.self) { overlay in
                                Image(overlay)
                                    .resizable()
                                    .scaledToFit()
                                    .background(Color.gray.opacity(0.3))
                                    // Aquí defines el tamaño de cada imagen directamente
                                    .frame(height: overlayHeight - 10)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
                    }

                    .padding(/*@START_MENU_TOKEN@*/.leading, -15.0/*@END_MENU_TOKEN@*/)
                    .frame(height: photoComp.overlay.count > 1 ? 200 : nil)
                    
                    // Descripción con palabras clave resaltadas
                    Text(photoComp.detalle)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/360.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .padding(.top)
                    
                    // Teoría
                    Text(photoComp.teoria)
                    
                    // Historia
                    Text(photoComp.historia)
                }
                .padding()
            }
        }
    }
}

// Datos de ejemplo para la vista previa
struct PhotoCompDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            if let composition = CompositionManager.shared.compositions.randomElement() {
                PhotoCompDetailView(photoComp: composition)
            } else {
                Text("No hay composiciones disponibles")
            }
        }
    }
}

