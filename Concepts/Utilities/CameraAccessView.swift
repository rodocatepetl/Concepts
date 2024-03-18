//
//  CameraAccessView.swift
//  Concepts
//
//  Created by Rodolfo Castillo on 18/03/24.
//

import SwiftUI
import AVFoundation

struct CameraAccessView: View {
    @State private var showingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            // Tu contenido aquí
        }
        .onAppear {
            checkCameraAccess()
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("Permiso de Cámara Requerido"),
                message: Text(alertMessage),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    func checkCameraAccess() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            // El usuario ha autorizado el acceso, continuar con la funcionalidad
            break
        case .notDetermined:
            // Permiso no determinado, solicitar acceso
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if !granted {
                    alertMessage = "No puedes usar esta funcionalidad sin conceder acceso a la cámara. Por favor, habilita el acceso en la Configuración de tu dispositivo."
                    showingAlert = true
                }
            }
        case .denied, .restricted:
            // El usuario ha denegado el acceso previamente o está restringido
            alertMessage = "El acceso a la cámara ha sido denegado. Por favor, habilita el acceso en la Configuración de tu dispositivo para usar esta funcionalidad."
            showingAlert = true
        @unknown default:
            break
        }
    }
}

