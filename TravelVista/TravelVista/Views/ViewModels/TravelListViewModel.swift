//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Bruno Evrard on 29/01/2025.
//


//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Bruno Evrard on 27/01/2025.
//

import Foundation

class TravelListViewModel: ObservableObject {
    
    var regions: [Region]
    
    init() {
        self.regions = Service().load("Source.json")
    }
    
    
}
