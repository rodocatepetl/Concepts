//
//  ConceptsRowView.swift
//  Concepts
//
//  Created by Gabriela Aimee Salazar Mata on 08/03/24.
//

import SwiftUI

struct ConceptsRowView: View {
    
    var composition: PhotoComp
    
    var body: some View {
        HStack {
            Image(composition.overlay.randomElement() ?? "")
                .resizable()
                .scaledToFill()
                .background(Color.blue.opacity(0.8))
                .frame(width: 30, height: 30)
                .cornerRadius(15)
                .clipped()
                .padding(.leading)
            
            Text (composition.nombre)
            
            Spacer()
        }
    }
}

struct ConceptsRowView_Previews: PreviewProvider {
    static var previews: some View {
            if let composition = CompositionManager.shared.compositions.randomElement() {
                return AnyView(ConceptsRowView(composition: composition))
            } else {
                return AnyView(EmptyView())
            }
        }
}
