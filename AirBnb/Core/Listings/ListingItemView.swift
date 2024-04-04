//
//  ListingItemView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 03/04/24.
//

import SwiftUI

struct ListingItemView: View {
    private let images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            TabView{
                
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height:320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 18")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        
                        Text("$567 ")
                            .fontWeight(.semibold)                        .foregroundStyle(.black)
                        
                        Text("night")
                    }
                    .foregroundStyle(.black)
                    
                }
                Spacer()
                
                HStack(spacing:2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
                
            }.font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
