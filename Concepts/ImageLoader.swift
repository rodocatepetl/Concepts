//
//  ImageLoader.swift
//  PhotoTelekinesis
//
//  Created by Rodolfo Castillo on 15/02/24.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private var cancellables = Set<AnyCancellable>()
    
    func load(fromURL urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] in self?.image = $0 }
            .store(in: &cancellables)
    }
}
