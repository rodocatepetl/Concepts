//
//  OrientationManager.swift
//  Concepts
//
//  Created by Rodolfo Castillo on 18/03/24.
//

import SwiftUI
import Combine

class OrientationManager: ObservableObject {
    static let shared = OrientationManager()
    
    @Published var orientation: UIDeviceOrientation = .portrait
    
    private init() {
        self.orientation = UIDevice.current.orientation
        
        NotificationCenter.default.addObserver(self, selector: #selector(didChangeOrientation), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc private func didChangeOrientation() {
        self.orientation = UIDevice.current.orientation
    }
}

