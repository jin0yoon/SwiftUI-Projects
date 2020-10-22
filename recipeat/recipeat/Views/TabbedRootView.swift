//
//  ContentView.swift
//  recipeat
//
//  Created by 윤진영 on 2020/10/11.
//

import SwiftUI

struct TabbedRootView: View {
    
    @State private var selection = 0
    
    @EnvironmentObject var env: GlobalEnvironment
    
    @State var isHidden: Bool = false
    
    var body: some View {
        ZStack{
            NavigationView {
                Text("")
            }.navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(isHidden)
            .onAppear { self.isHidden = true }
            .edgesIgnoringSafeArea([.top, .bottom])
            .navigationBarBackButtonHidden(true)
            
            TabView(selection: $selection){
                HomeView()
                    .tabItem {
                        VStack{
                            Image(systemName: "house")
                            Text("Home")
                        }
                    }.tag(0)
                
                SearchView()
                    .tabItem {
                        VStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                    }.tag(1)
                
                MeView()
                    .tabItem {
                        VStack{
                            Image(systemName: "person.circle")
                            Text("Me")
                        }
                    }.tag(2)
            }
        }
        
    }
}


struct TabbedRootView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedRootView()
    }
}
