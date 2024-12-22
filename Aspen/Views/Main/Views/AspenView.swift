//
//  AspenPageView.swift
//  Aspen
//
//  Created by Connor Shearer on 15/12/2024.
//

import SwiftUI

struct AspenView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 0) {
                    Image("AppIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 6, trailing: 12))
                    VStack(alignment: .leading) {
                        Text("Aspen for macOS").font(.title)
                        Spacer().frame(height: 6)
                        Text("Aspen is a free, open collection of tools which hopes to improve your macOS experience in one way or another.").font(.caption).frame(width: 300, alignment: .leading)
                    }.padding(.top, 6)
                }.padding(EdgeInsets(top: 6, leading: 12, bottom: 0, trailing: 10))
                HStack() {
                    Button("Website", systemImage: "safari", action: openWebsite)
                    Button("Repository", systemImage: "safari", action: openRepository)
                    Button("Contributors", systemImage: "safari", action: openRepositoryContributors)
                }.padding(.leading, 20).padding(.bottom, 6)
            }
            Divider()
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "gear")
                        .font(.title)
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 10)
                    Text("System: Shows an overview of your system and all its most important details.").frame(maxWidth: .infinity, alignment: .leading)
                }.encapsulated()
                Spacer()
                HStack {
                    Image(systemName: "puzzlepiece.extension")
                        .font(.title)
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 10)
                    Text("Modules: Enable/disable modules of Aspen which allow you to improve your macOS experience in the way you want.").frame(maxWidth: .infinity, alignment: .leading)
                }.encapsulated()
                Spacer()
                HStack {
                    Image(systemName: "book")
                        .font(.title)
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 10)
                    Text("Learning: A library of knowledge which you can use to improve your macOS and, your overall tech experience. What you learn here can easily be applied outside of macOS!").frame(maxWidth: .infinity, alignment: .leading)
                }.encapsulated()
                Spacer()
                HStack {
                    Image(systemName: "arrow.uturn.backward")
                        .font(.title)
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 10)
                    Text("Restore: Something gone wrong? Or you want to simply revert everything? This is where you can do just that.").frame(maxWidth: .infinity, alignment: .leading)
                }.encapsulated()
            }.padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
        }
    }
}

struct Encapsulated: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.windowBackgroundColor))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.gray.opacity(0.2), lineWidth: 1)
            )
    }
}

extension View {
    func encapsulated() -> some View {
        self.modifier(Encapsulated())
    }
}

func openWebsite() {
    guard let url = Constants.appWebsiteURL else { return }
    NSWorkspace.shared.open(url)
}

func openRepository() {
    guard let url = Constants.appRepositoryURL else { return }
    NSWorkspace.shared.open(url)
}

func openRepositoryContributors() {
    guard let url = Constants.appContributralURL else { return }
    NSWorkspace.shared.open(url)
}

#Preview {
    AspenView()
}
