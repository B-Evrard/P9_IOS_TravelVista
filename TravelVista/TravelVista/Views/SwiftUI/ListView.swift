//
//  ListView.swift
//  TravelVista
//
//  Created by Bruno Evrard on 20/01/2025.
//

import SwiftUI

struct ListView: View {
    
    var regions: [Region]
    
    var body: some View {
        
        VStack {
            Text("Liste de voyages")
        }
        NavigationStack {
            List {
                ForEach(regions, id: \.name) { region in
                    regionList(region: region)
                }
            }
            .background(Color.white)
            .listStyle(PlainListStyle())
            .listRowSpacing(12)
            
        }
        
        
    }
    
}


struct regionList: View {
    
    var region: Region
    
    var body: some View {
        
        VStack {
            Section(header:
                HStack {
                    Text(region.name)
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.gray)
                    Spacer()
                }
            ) {
                
                ForEach(region.countries, id: \.name) { country in
                          countryView(country: country)
                    
                 }
                
            }
        }
      
        
        
        
    }
    
}

struct countryView: View {
    
    var country: Country
    
    var body: some View {
        
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



#Preview {
    ListView(regions: Service().load("Source.json"))
}
