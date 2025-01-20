//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Bruno Evrard on 20/01/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    
    var countryName: String
    var capitalName: String
    var rate: Int
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(countryName)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(Color("CustomBlue"))
                
                Text(capitalName)
                    .font(.system(size: 17))
                    .foregroundColor(Color(.darkGray))
            }.padding()
            
            Spacer()
            
            HStack (spacing: 1) {
                ForEach(0..<rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                }
            }.padding()
            
        }
        .frame(width: 393, height: 65)
       
    }
}

#Preview {
    TitleViewSwiftUI(countryName: "Vietnam", capitalName: "Hanoi", rate: 4)
}




