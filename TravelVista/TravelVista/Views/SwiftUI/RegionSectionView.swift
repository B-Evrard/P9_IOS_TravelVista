//
//  RegionList.swift
//  TravelVista
//
//  Created by Bruno Evrard on 29/01/2025.
//

import SwiftUI

struct RegionSectionView: View {
    
    var region: Region
    
    var body: some View {
        Section(header:
            HStack {
                Text(region.name)
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.gray)
                Spacer()
            }
        ) {
            ForEach(region.countries, id: \.name) { country in
                CountryRowView(country: country)
            }
        }
    }
}
