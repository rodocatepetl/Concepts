//
//  PhotoComp.swift
//  Concepts
//
//  Created by Rodolfo Castillo on 12/03/24.
//

import SwiftUI

struct PhotoComp: Identifiable, Codable {
    var id = UUID()
    var nombre: String
    var detalle: String
    var historia: String
    var teoria: String
    var ejemplos: [String]  // Nombres de archivo de imagen para los ejemplos
    var overlay: String     // Nombre de archivo de imagen para el overlay
    var icon: String        // Nombre de archivo de imagen para el ícono
    
    // MARK: - Solo para mostrar el uso (Ejemplos)
    fileprivate static let examples = [
        PhotoComp(nombre: "Regla de Tercios", detalle: "Divide el marco en tres partes horizontales y verticales.", historia: "Historia de la regla de tercios...", teoria: "Teoría de la regla de tercios...", ejemplos: ["ejemplo1.jpg"], overlay: "overlay1.jpg", icon: "icon1.jpg"),
        PhotoComp(nombre: "Marco Natural", detalle: "Utiliza elementos naturales como árboles para enmarcar.", historia: "Historia del marco natural...", teoria: "Teoría del marco natural...", ejemplos: ["ejemplo2.jpg"], overlay: "overlay2.jpg", icon: "icon2.jpg")
    ]
}

// MARK: - PhotoComp documentation view
fileprivate struct DocumantationPhotoCompView: View {
    var body: some View {
        VStack {
            Text("Ejemplo de lista de comp")
                            .font(.title)
                            .bold()
                            .padding()
            List(PhotoComp.examples) { comp in
                HStack {
                    Image(systemName: "photo")
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text(comp.nombre).font(.headline)
                        Text(comp.detalle).font(.subheadline)
                    }
                }
            }
            Text("Definición de PhotoComp")
                            .font(.title)
                            .bold()
                            .padding()
            ScrollView {
                CodeView(code: """
                    struct PhotoComp: Identifiable, Codable {
                            var id = UUID()
                            var nombre: String
                            var detalle: String
                            var historia: String
                            var teoria: String
                            var ejemplos: [String]
                            var overlay: String
                            var icon: String
                    }
                    """)

                Text("Ejemplos de Uso")
                    .font(.title2)
                    .bold()
                    .padding()

                CodeView(code: """
                let ejemploPhotoComp = PhotoComp(
                    nombre: "Regla de Tercios",
                    detalle: "Detalles de la regla de tercios...",
                    historia: "Historia de la regla de tercios...",
                    teoria: "Teoría detrás de la regla de tercios...",
                    ejemplos: ["imagen1.jpg", "imagen2.jpg"],
                    overlay: "overlay.jpg",
                    icon: "icon1.jpg"
                )
                """)


            }
        }
    }
}

struct PhotoCompView_Previews: PreviewProvider {
    static var previews: some View {
        DocumantationPhotoCompView()
    }
}
