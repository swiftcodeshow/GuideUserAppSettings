//
//  ContentView.swift
//  GuideUserAppSettings
//
//  Created by 米国梁 on 2021/4/29.
//

import SwiftUI

struct ContentView: View {

    @State var show = false
    
    var body: some View {
        Button("Ask user for Settings") {
            show.toggle()
        }
        .alert(isPresented: $show, content: {
            return Alert(title: Text("Permission Denied"), message: Text("Grant permissions to App in Settings"), primaryButton: .default(Text("Go to Settings"), action: {
                let url = URL(string: UIApplication.openSettingsURLString)!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }), secondaryButton: .cancel())
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
