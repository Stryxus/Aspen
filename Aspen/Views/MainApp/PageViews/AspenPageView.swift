//
//  AspenPageView.swift
//  Aspen
//
//  Created by Connor Shearer on 15/12/2024.
//

import SwiftUI

struct AspenPageView: View {
    var body: some View {
        VStack {
            HStack {
                Image("AppIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60).padding(EdgeInsets(top: CGFloat(10), leading: CGFloat(10), bottom: CGFloat(0), trailing: CGFloat(0)))
                Text("Aspen for macOS").font(.title).padding(EdgeInsets(top: CGFloat(-10), leading: CGFloat(6), bottom: CGFloat(0), trailing: CGFloat(0)))
            }.frame(maxWidth: .infinity, alignment: .leading)
            Text("Aspen is a free, open collection of tools which hopes to improve your macOS experience in one way or another.").font(.caption).multilineTextAlignment(.center).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: CGFloat(-32), leading: CGFloat(84), bottom: CGFloat(0), trailing: CGFloat(20)))
            Divider()
            VStack {
                Text("Getting started, go to Modules and enable the modules you would like.").frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Text("If needed, you can revert changes in Restore.").frame(maxWidth: .infinity, alignment: .leading)
            }.padding(EdgeInsets(top: CGFloat(10), leading: CGFloat(20), bottom: CGFloat(0), trailing: CGFloat(20)))
        }
    }
}

#Preview {
    AspenPageView()
}
