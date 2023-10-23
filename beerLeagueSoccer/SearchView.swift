//
//  SearchView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct SearchView: View {
    
    // Stores user search input
    @State private var input: String = ""
    // Stores suggested Teams in league
    @State private var teams: [Team] = demoTeams
    
    var body: some View {

        NavigationView {
            VStack {
                List {
                    ForEach(teams, id: \.id) { team in
                        TeamCell(team: team)
                    }
                }
                .navigationTitle("Search")
                .searchable(text: $input, prompt: "players, teams, leagues")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
