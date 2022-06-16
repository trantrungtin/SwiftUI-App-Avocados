//
//  AppView.swift
//  Avocados
//
//  Created by Tin Tran on 11/06/2022.
//

import SwiftUI

struct AppView: View {
    // MARK: - PROPERTY

    // MARK: - BODY
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                Image("tabicon-branch")
                Text("Avocados")
            }
            ContentView()
                .tabItem {
                Image("tabicon-book")
                Text("Recipes")
            }
            RipeningStagesView()
                .tabItem {
                Image("tabicon-avocado")
                Text("Ripening")
            }
            AvocadosView()
                .tabItem {
                Image("tabicon-settings")
                Text("Settings")
            }
        } //: TABVIEW
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

// MARK: - PREVIEW
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
