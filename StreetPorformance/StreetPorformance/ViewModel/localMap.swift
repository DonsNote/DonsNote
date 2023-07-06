//
//  localMap.swift
//  StreetPorformance
//
//  Created by Kimdohyun on 2023/07/03.
//

import Foundation
import SwiftUI
import CoreLocationUI
import CoreLocation
import MapKit
import PDFKit

//class MyViewController: UIViewController
//{
//    @IBOutlet weak var mapView : MKMapView!
//
//    func showLocation()
//    {
//        let location = CLLocation(latitude: 37.332331, longitude: 122.031219)
//        let placemark = MKPlacemark(coordinate: location.coordinate)
//        mapView.addAnnotation(placemark)
//        mapView.showAnnotations([placemark], animated: true)
//    }
//}

final class RedViewControlloer: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}

struct RedViewControlloerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return RedViewControlloer()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}



struct MapView: UIViewRepresentable {
    @StateObject private var locationManager = LocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        if let currentLocation = locationManager.currentLocation {
            let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            let region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }
}


class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    @Published var currentLocation: CLLocation?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        currentLocation = location
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("위치 업데이트에 실패하였습니다. 에러: \(error.localizedDescription)")
    }
}
