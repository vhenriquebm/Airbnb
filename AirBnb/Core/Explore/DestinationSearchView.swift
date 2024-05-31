//
//  DestinationSearchView.swift
//  AirBnb
//
//  Created by Vitor Henrique Barreiro Marinho on 31/05/24.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        
        VStack {
            Button(action: {
                withAnimation(.snappy) {
                    show.toggle()
                }
                
            }, label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundColor(.black)
            })
            
            
            
            
            VStack(alignment: .leading) {
                
                if selectedOption == .location {
                    
                    HStack() {
                        Text("Where to?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                    }
                    
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                    }.frame(height: 44)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: 1.0)
                                .foregroundColor(Color(.systemGray4))
                        }
                } else {
                    AddInfoView(title: "Where", description: " Destination")
                        .onTapGesture {
                        selectedOption = .dates
                    }
                }
             
            }
            
          
            
        }.padding()
            .frame(height: selectedOption == .location ? 120 : 65)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location

                }
            }
        
        
        VStack {
            
            if selectedOption == .dates {
                HStack {
                    Text("Show expanded view")
                    Spacer()

                }
            } else {
                AddInfoView(title: "When", description: "Add dates")
            }
        }.padding()
            .frame(height: selectedOption == .dates ? 120 : 65)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates

                }
        }
        
        
        VStack {
            
            if selectedOption == .guests {
                
                HStack {
                    Text("Show expanded view")
                    Spacer()

                }

            } else {
                AddInfoView(title: "Who", description: "Add guests")

            }
            
        }.padding()
            .frame(height: selectedOption == .guests ? 120 : 65)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests

                }
        }
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}



