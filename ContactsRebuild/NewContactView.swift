//
//  NewContactView.swift
//  ContactsRebuild
//
//  Created by Aldo Vitolo on 13/11/23.
//

import SwiftUI

struct NewContactView: View {
    @State private var isModalPresented = false
    var body: some View {
        NavigationStack{
            List{
                
            }
            .navigationTitle("Nuovo contatto").navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Button(action: {}, label: {
                        Text("Fine")
                    })
                }
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {}, label: {
                        Text("Annulla")
                    })
                }
            }
        }
    }
}

#Preview {
    NewContactView()
}
