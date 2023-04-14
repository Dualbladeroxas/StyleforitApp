//
//  CameraView.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/13/23.
//

import SwiftUI
import AVFoundation

struct CameraView: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: UIScreen.main.bounds)
        let previewLayer = AVCaptureVideoPreviewLayer(session: context.coordinator.captureSession)
        previewLayer.frame = view.frame
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)
        
        context.coordinator.captureSession.startRunning()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    class Coordinator: NSObject, AVCapturePhotoCaptureDelegate {
        var parent: CameraView
        var captureSession: AVCaptureSession
        
        init(_ parent: CameraView) {
            self.parent = parent
            self.captureSession = AVCaptureSession()
            super.init()
            
            if let camera = AVCaptureDevice.default(for: .video) {
                do {
                    let input = try AVCaptureDeviceInput(device: camera)
                    if self.captureSession.canAddInput(input) {
                        self.captureSession.addInput(input)
                    }
                } catch {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
}

