//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI


struct AwardsView: View {
    let awards = Award.getAwards().filter { $0.awarded }
    
    var body: some View {
        NavigationView {
            CustomGridView(items: awards, columns: 2) { award, itemSize in
                VStack {
                    award.awardView
                    Text(award.title)
                }
                .padding()
                .frame(width: itemSize, height: itemSize)
            }
            .navigationBarTitle("Your awards: \(awards.count)")
        }
    }
}



struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
