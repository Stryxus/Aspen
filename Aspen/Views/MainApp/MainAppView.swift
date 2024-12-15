//
//  MainAppView.swift
//  Aspen
//
//  Created by Connor Shearer on 14/12/2024.
//

import SwiftUI

enum Pages {
    case Aspen, System, Modules, Appearance, Sound, Display, Network, Storage, Peripherals, Energy, Activity, App_Cleaner, Apple_Intelligence, Restore
}

struct MainAppView: View {
    
    @State private var selectedPage: Pages = Pages.Aspen
    
    @State private var showModuleAppearance: Bool = true
    @State private var showModuleSound: Bool = true
    @State private var showModuleDisplay: Bool = true
    @State private var showModuleNetwork: Bool = true
    @State private var showModuleStorage: Bool = true
    @State private var showModulePeripherals: Bool = true
    @State private var showModuleEnergy: Bool = true
    @State private var showModuleActivity: Bool = true
    @State private var showModuleAppCleaner: Bool = true
    @State private var showModuleAppleIntelligence: Bool = true
    private var showModuleAny: Bool {
        showModuleAppearance ||
        showModuleSound ||
        showModuleDisplay ||
        showModuleNetwork ||
        showModuleStorage ||
        showModulePeripherals ||
        showModuleEnergy ||
        showModuleActivity ||
        showModuleAppCleaner ||
        showModuleAppleIntelligence
    }
    
    func formatPageEnum(page: Pages) -> String {
        return String(describing: page).replacingOccurrences(of: "_", with: " ")
    }
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selectedPage) {
                NavigationLink(value: Pages.Aspen) {
                    Label(formatPageEnum(page: Pages.Aspen), systemImage: "leaf")
                }
                NavigationLink(value: Pages.System) {
                    Label(formatPageEnum(page: Pages.System), systemImage: "gear")
                }
                NavigationLink(value: Pages.Modules) {
                    Label(formatPageEnum(page: Pages.Modules), systemImage: "puzzlepiece.extension")
                }
                Divider()
                if showModuleAppearance {
                    NavigationLink(value: Pages.Appearance) {
                        Label(formatPageEnum(page: Pages.Appearance), systemImage: "paintpalette")
                    }
                }
                if showModuleSound {
                    NavigationLink(value: Pages.Sound) {
                        Label(formatPageEnum(page: Pages.Sound), systemImage: "speaker.wave.2")
                    }
                }
                if showModuleDisplay {
                    NavigationLink(value: Pages.Display) {
                        Label(formatPageEnum(page: Pages.Display), systemImage: "display")
                    }
                }
                if showModuleNetwork {
                    NavigationLink(value: Pages.Network) {
                        Label(formatPageEnum(page: Pages.Network), systemImage: "network")
                    }
                }
                if showModuleStorage {
                    NavigationLink(value: Pages.Storage) {
                        Label(formatPageEnum(page: Pages.Storage), systemImage: "externaldrive")
                    }
                }
                if showModulePeripherals {
                    NavigationLink(value: Pages.Peripherals) {
                        Label(formatPageEnum(page: Pages.Peripherals), systemImage: "cable.connector")
                    }
                }
                if showModuleEnergy {
                    NavigationLink(value: Pages.Energy) {
                        Label(formatPageEnum(page: Pages.Energy), systemImage: "bolt")
                    }
                }
                if showModuleActivity {
                    NavigationLink(value: Pages.Activity) {
                        Label(formatPageEnum(page: Pages.Activity), systemImage: "cpu")
                    }
                }
                if showModuleAppCleaner {
                    NavigationLink(value: Pages.App_Cleaner) {
                        Label(formatPageEnum(page: Pages.App_Cleaner), systemImage: "trash")
                    }
                }
                if showModuleAppleIntelligence {
                    NavigationLink(value: Pages.Apple_Intelligence) {
                        Label(formatPageEnum(page: Pages.Apple_Intelligence), systemImage: "apple.intelligence")
                    }
                }
                if showModuleAny {
                    Divider()
                }
                NavigationLink(value: Pages.Restore) {
                    Label(formatPageEnum(page: Pages.Restore), systemImage: "arrow.uturn.backward")
                }
            }.toolbar(removing: .sidebarToggle).navigationSplitViewColumnWidth(200).frame(idealWidth: 800, idealHeight: 1600)
        } detail: {
            NavigationStack {
                ScrollView {
                    switch (selectedPage) {
                    case .Aspen:
                        AspenPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .System:
                        SystemPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Modules:
                        ModulesPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Appearance:
                        AppearancePageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Sound:
                        SoundPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Display:
                        DisplayPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Network:
                        NetworkPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Storage:
                        StoragePageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Peripherals:
                        PeripheralsPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Energy:
                        EnergyPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Activity:
                        ActivityPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .App_Cleaner:
                        AppCleanerPageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Apple_Intelligence:
                        AppleIntelligencePageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Restore:
                        RestorePageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    }
                }
            }.padding(EdgeInsets(top: CGFloat(8), leading: CGFloat(0), bottom: CGFloat(0), trailing: CGFloat(0)))
        }
    }
}

#Preview {
    MainAppView()
}
