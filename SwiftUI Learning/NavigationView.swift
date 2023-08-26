//
//  NavigationView.swift
//  SwiftUI Learning
//
//  Created by Nandini Vithlani on 26/08/23.
//

import SwiftUI

struct Navigation: View {
    
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
                    List {
                        NavigationLink("Item 1", destination: ItemDetailView(itemName: "Item 1 Detail"))
                        NavigationLink("Item 2", destination: ItemDetailView(itemName: "Item 2 Detail"))
                        NavigationLink("Settings", destination: SettingsView())
                    }
                    .navigationBarTitle("Items")
                }
        
    }
}


struct ItemDetailView: View {
    var itemName: String
    
    var body: some View {
        VStack {
            Text("Detail for \(itemName)")
                .font(.title)
                .padding()
            // Additional content for the detail view can be added here
        }
    }
}


struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings Page")
                .font(.title)
                .padding()
            // Configure your settings options here
        }
        .navigationBarTitle("Settings")
    }
}


struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
