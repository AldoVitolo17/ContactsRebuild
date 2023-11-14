//
//  ContentView.swift
//  ContactsRebuild
//
//  Created by Aldo Vitolo on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isModalPresented = false
    let alphabet = Array(arrayLiteral: "a"..."z")
    var body: some View {
        NavigationStack{
            List{
                HStack{
                    Circle()
                        .frame(width: 70)
                    VStack{
                        Text("Aldo Vitolo")
                            .bold()
                            .font(.headline)
                        Text("La mia scheda")
                            .font(.footnote)
                    }
                }
                Section("A"){
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contatti")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {isModalPresented.toggle()}, label: {
                        Text(Image(systemName: "plus"))
                    })
                }
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {}, label: {
                        HStack{
                            Image(systemName: "chevron.backward")
                            Text("Indietro")
                        }
                        
                    })
                }
            }
            .sheet(isPresented: $isModalPresented, content: {
                NewContactView()
            })
        }
        
    }
}

#Preview {
    ContentView()
}
