//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Bruno Evrard on 20/01/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    
    let countryName: String
    let capitalName: String
    let rate: Int
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(countryName)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(Color("CustomBlue"))
                
                Text(capitalName)
                    .font(.system(size: 17))
                    .foregroundColor(Color(.darkGray))
            }
            
            Spacer()
            
            HStack (spacing: 1) {
                ForEach(0..<rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.customSand)
                }
            }.padding()
            
        }
        .padding()
       
    }
}

#Preview {
    TitleViewSwiftUI(countryName: "Vietnam", capitalName: "Hanoi", rate: 4)
}




