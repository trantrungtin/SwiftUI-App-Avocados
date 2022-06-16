//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Tin Tran on 11/06/2022.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) {item in
                        RipeningView(ripening: item)
                    }
                }
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
            Spacer()
        }
    }
}

// MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
