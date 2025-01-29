//
//  CountryView.swift
//  TravelVista
//
//  Created by Bruno Evrard on 29/01/2025.
//

import SwiftUI

struct CountryView: View {
    
    var country: Country
    
    var body: some View {
        
        NavigationLink(destination: DetailView(country: country)) {
            HStack {
                Image(country.pictureName)
                    .resizable()
                    .frame(width: 52, height: 52)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(country.name)
                        .font(.system(size: 20))
                        .foregroundColor(Color("CustomBlue"))
                    
                    Text(country.capital)
                        .font(.system(size: 15))
                }
                
                Spacer()
                
                HStack {
                    Text("\(country.rate)")
                        .font(.system(size: 17))
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.customSand)
                }
                
            }
        }
    }
    
}
