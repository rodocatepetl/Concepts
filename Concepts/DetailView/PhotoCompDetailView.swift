import SwiftUI

struct PhotoCompDetailView: View {
    var photoComp: PhotoComp

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(photoComp.nombre)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // ScrollView horizontal para los overlays
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(photoComp.overlay, id: \.self) { overlay in
                            Image(overlay)
                                .resizable()
                                .scaledToFit()
                                .padding(.bottom)
                                .background(Color.gray.opacity(0.3))
                                .frame(height: 254.0)
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

