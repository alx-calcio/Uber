//
//  UberMapViewRepresentable.swift
//  Uber
//
//  Created by Alexandre Calcio Gaudino on 13/10/2024.
//

import SwiftUI
import MapKit

#if os(macOS)

struct UberMapViewRepresentable: NSViewRepresentable {
    
    typealias UIViewType = NSView
    
    let MapView = MKMapView()

    func makeNSView(context: Context) -> NSView {
        MapView.isRotateEnabled = false
        MapView.showsUserLocation = true
        MapView.userTrackingMode = .follow
        return MapView
    }
    
    func updateNSView(_ uiView: NSView, context: Context){
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }

}

#elseif os(iOS)

struct UberMapViewRepresentable: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    let MapView = MKMapView()

    func makeUIView(context: Context) -> UIView {
        MapView.isRotateEnabled = false
        MapView.showsUserLocation = true
        MapView.userTrackingMode = .follow
        return MapView
    }
    
    func updateUIView(_ uiView: UIView, context: Context){
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }

}

#endif

extension UberMapViewRepresentable {
    
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: UberMapViewRepresentable
        init(parent: UberMapViewRepresentable){
            self.parent = parent
            super.init()
        }
    }
    
}
