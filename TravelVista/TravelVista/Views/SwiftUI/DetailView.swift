//
//  DetailView.swift
//  TravelVista
//
//  Created by Bruno Evrard on 28/01/2025.
//


import Foundation
import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    
    let country: Country
    
    func makeUIViewController(context: Context)  ->  DetailViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let detailView = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
             
        guard let detailViewController = detailView else {
            fatalError()
        }
        
        detailView?.country = country
        
        return detailViewController
        
    }
    
    func updateUIViewController(_ viewController: DetailViewController, context: Context) {
        
    }
    
    
}
