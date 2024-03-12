//
//  CodeView.swift
//  Concepts
//
//  Created by Rodolfo Castillo on 12/03/24.
//

import SwiftUI

// MARK: - Code View
struct CodeView: View {
    var code: String

    var body: some View {
        Text(code)
            .font(.system(.body, design: .monospaced))
            .foregroundColor(.blue)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
    }
}
