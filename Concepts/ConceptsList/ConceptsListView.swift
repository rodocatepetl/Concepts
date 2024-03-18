//
//  ConceptsListView.swift
//  Concepts
//
//  Created by Gabriela Aimee Salazar Mata on 08/03/24.
//

import SwiftUI

struct ConceptsListView: View {
    var body: some View {
        
        
        NavigationView {
            
            List (CompositionManager.shared.compositions, id: \.id) {composition in
                NavigationLink (destination: PhotoCompDetailView(photoComp: composition)){
                    ConceptsRowView(composition: composition)
                }
                .navigationTitle("Concepts")
                .listRowSeparator(.hidden)
                
            }   .background(.white)
                .scrollContentBackground(.hidden)
        }
    }
}

struct ConceptsListView_Previews: PreviewProvider {
    static var previews: some View {
        ConceptsListView()
    }
}
