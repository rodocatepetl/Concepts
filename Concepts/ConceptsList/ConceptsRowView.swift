//
//  ConceptsRowView.swift
//  Concepts
//
//  Created by Gabriela Aimee Salazar Mata on 08/03/24.
//

import SwiftUI

struct ConceptsRowView: View {
    
    var concepts: Concepts
    
    var body: some View {
        HStack {
            concepts.icon
                .resizable()
                .frame (width: 20, height: 20)
                .padding (10)
            
            Text (concepts.name)
                    .padding(10)
            
            Spacer()
        }
    }
}

struct ConceptsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ConceptsRowView (concepts: Concepts (id: 1, name: "Tres cuartos", icon: Image(systemName: "star"), description: "tipo de concepto utilizado...", history: "creado en 1980...", overlay: Image(systemName:"star") ))}
}
