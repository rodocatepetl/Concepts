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
                .background(Color.black.opacity(0.8))
                .frame(width: 40.0, height: 40.0)
                .cornerRadius(35)
                .clipped()
                .padding(.horizontal, 8.0)
                .padding(.vertical, 5.0)
            
                Text (composition.nombre)
                .font(.title3)
                .multilineTextAlignment(.leading)
            
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
