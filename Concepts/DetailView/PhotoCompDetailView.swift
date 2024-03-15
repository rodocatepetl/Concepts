import SwiftUI

struct PhotoCompDetailView: View {
    var photoComp: PhotoComp

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(photoComp.nombre)
                    .font(.largeTitle)
                    .padding(.top)

                // ScrollView horizontal para los overlays
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(photoComp.overlay, id: \.self) { overlay in
                            Image(overlay)
                                .resizable()
                                .scaledToFit().background(Color.gray.opacity(0.3))
                                .frame(height: 200)
                                .cornerRadius(10)
                                
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(height: photoComp.overlay.count > 1 ? 200 : nil)
                
                // Descripción con palabras clave resaltadas
                Text(photoComp.detalle)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                
                // Teoría
                Text(photoComp.teoria)
                
                // Historia
                Text(photoComp.historia)
            }
            .padding()
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

