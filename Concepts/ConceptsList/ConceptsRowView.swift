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
            Image(composition.icon)
                .resizable()
                .frame (width: 20, height: 20)
                .padding (10)
            
            Text (composition.nombre)
                    .padding(10)
            
            Spacer()
        }
    }
}

struct ConceptsRowView_Previews: PreviewProvider {
    static var previews: some View {
            if let composition = CompositionManager.shared.compositions.randomElement() {
                return AnyView(PhotoCompDetailView(photoComp: composition))
            } else {
                return AnyView(EmptyView())
            }
        }
}
