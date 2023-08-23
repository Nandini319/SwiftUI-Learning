//
//  ContentView.swift
//  SwiftUI Learning
//
//  Created by Nandini Vithlani on 23/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isCardExpanded = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Responsive Card")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .frame(
                        width: isCardExpanded ? geometry.size.width : geometry.size.width * 0.8,
                        height: isCardExpanded ? geometry.size.height : 200 // Fixed height when not expanded
                    )
                    .position(
                        x: geometry.size.width / 2,
                        y: isCardExpanded ? geometry.size.height / 2 : geometry.size.height * 0.3
                    )
                    .onTapGesture {
                        withAnimation {
                            isCardExpanded.toggle()
                        }
                    }
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

