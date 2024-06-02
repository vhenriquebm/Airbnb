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
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numberOfGuests = 0
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                    
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundColor(.black)
                })
                
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                }
                
                
            }
            .foregroundColor(.black)
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding()
        }
        VStack {
            
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
                    AddInfoView(title: "Where", description: " Add Destination")
                        .onTapGesture {
                            selectedOption = .dates
                        }
                }
            }
            
        }
        .padding()
        .frame(height: selectedOption == .location ? 120 : 65)
        .modifier(CustomModifier())
        .onTapGesture {
            withAnimation(.snappy) {
                selectedOption = .location
                
            }
        }
        
        VStack(alignment: .leading) {
            
            if selectedOption == .dates {
                Text("When's your trip?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack {
                    DatePicker("From", selection: $startDate, displayedComponents: .date)
                    
                    Divider()
                    
                    DatePicker("To", selection: $startDate, displayedComponents: .date)
                    
                }
                .foregroundStyle(.gray)
                .font(.subheadline)
                .fontWeight(.semibold)
                
            } else {
                AddInfoView(title: "When", description: "Add dates")
            }
        }
        .padding()
        .frame(height: selectedOption == .dates ? 145 : 65)
        .modifier(CustomModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                    
                }
            }
        
        VStack(alignment: .leading) {
            
            if selectedOption == .guests {
                
                Text("Who's coming?")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Stepper {
                    Text(" \(numberOfGuests) Adults")
                } onIncrement: {
                    numberOfGuests += 1
                }  onDecrement: {
                    guard numberOfGuests > 0 else { return }
                    numberOfGuests -= 1
                }
                
            } else {
                AddInfoView(title: "Who", description: "Add guests")
            }
        }
        .padding()
        .frame(height: selectedOption == .guests ? 120 : 65)
        .modifier(CustomModifier())
        .onTapGesture {
            withAnimation(.snappy) {
                selectedOption = .guests
                
            }
        }
        
        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}



struct CustomModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
