import SwiftUI

struct PhotoCompDetailView: View {
    var photoComp: PhotoComp

    var body: some View {
        GeometryReader { reader in
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
                                    .padding(.bottom)
                                    .background(Color.gray.opacity(0.3))
                                    // Aquí defines el tamaño de cada imagen directamente
                                    .frame(height: overlayHeight - 10)
                                    .cornerRadius(10)
                                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
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

