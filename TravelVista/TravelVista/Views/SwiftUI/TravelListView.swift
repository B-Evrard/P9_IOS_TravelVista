//
//  ListView.swift
//  TravelVista
//
//  Created by Bruno Evrard on 20/01/2025.
//

import SwiftUI

struct TravelListView: View {
    
    var viewModel = TravelListViewModel()
    
    var body: some View {
        
        
        
        NavigationStack {
            Text("Liste de voyages")
            List {
                ForEach(viewModel.regions, id: \.name) { region in
                    RegionListView(region: region)
                }
            }
            .background(Color.white)
            .listStyle(PlainListStyle())
            .listRowSpacing(12)
            
        }
        
    }
    
}








#Preview {
    TravelListView(viewModel: TravelListViewModel())
}
