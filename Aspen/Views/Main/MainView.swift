//
//  MainAppView.swift
//  Aspen
//
//  Created by Connor Shearer on 14/12/2024.
//

import SwiftUI

enum Pages {
    case Aspen, System, Modules, Appearance, Sound, Display, Network, Storage, Peripherals, Energy, Activity, Apple_Intelligence, App_Cleaner, Security_Check, Learning, Restore
}

struct MainView: View {
    
    @State private var columnVisibility: NavigationSplitViewVisibility = .all // Force sidebar visibility
    @State private var selectedPage: Pages = Pages.Aspen
    
    // System Modules
    @State private var showModuleAppearance: Bool = false
    @State private var showModuleSound: Bool = false
    @State private var showModuleDisplay: Bool = false
    @State private var showModuleNetwork: Bool = false
    @State private var showModuleStorage: Bool = false
    @State private var showModulePeripherals: Bool = false
    @State private var showModuleEnergy: Bool = false
    @State private var showModuleActivity: Bool = false
    @State private var showModuleAppleIntelligence: Bool = false
    
    // App Modules
    @State private var showModuleSecurityCheck: Bool = false
    @State private var showModuleAppCleaner: Bool = false
    
    
    // All-checks
    private var showModulesSystemAny: Bool {
        showModuleAppearance ||
        showModuleSound ||
        showModuleDisplay ||
        showModuleNetwork ||
        showModuleStorage ||
        showModulePeripherals ||
        showModuleEnergy ||
        showModuleActivity ||
        showModuleAppleIntelligence
    }
    private var showModulesAppsAny: Bool {
        showModuleSecurityCheck ||
        showModuleAppCleaner
    }
    private var showModuleAny: Bool {
        showModulesSystemAny ||
        showModulesAppsAny
    }
    
    func formatPageEnum(page: Pages) -> String {
        return String(describing: page).replacingOccurrences(of: "_", with: " ")
    }
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
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
                if showModuleAny {
                    if showModulesSystemAny {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("System Modules")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Divider()
                        }.padding(.top, 10)
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
                                Label(formatPageEnum(page: Pages.Storage), systemImage: "internaldrive")
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
                        if showModuleAppleIntelligence {
                            NavigationLink(value: Pages.Apple_Intelligence) {
                                Label(formatPageEnum(page: Pages.Apple_Intelligence), systemImage: "apple.intelligence")
                            }
                        }
                    }
                    if showModulesAppsAny {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("App Modules")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Divider()
                        }.padding(.top, 10)
                        if showModuleSecurityCheck {
                            NavigationLink(value: Pages.App_Cleaner) {
                                Label(formatPageEnum(page: Pages.App_Cleaner), systemImage: "trash")
                            }
                        }
                        if showModuleAppCleaner {
                            NavigationLink(value: Pages.Security_Check) {
                                Label(formatPageEnum(page: Pages.Security_Check), systemImage: "shield")
                            }
                        }
                    }
                } else {
                    Divider()
                    Label("No modules enabled", systemImage: "exclamationmark.triangle").font(.subheadline).opacity(0.45)
                }
                VStack(alignment: .leading) {
                    Text("Other")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Divider()
                }.padding(.top, 10)
                NavigationLink(value: Pages.Learning) {
                    Label(formatPageEnum(page: Pages.Learning), systemImage: "book")
                }
                NavigationLink(value: Pages.Restore) {
                    Label(formatPageEnum(page: Pages.Restore), systemImage: "arrow.uturn.backward")
                }
            }.toolbar(removing: .sidebarToggle).navigationSplitViewColumnWidth(min: 200, ideal: 200, max: 200)
        } detail: {
            NavigationStack {
                ScrollView {
                    switch (selectedPage) {
                    case .Aspen:
                        AspenView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .System:
                        SystemView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Modules:
                        ModulesView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Appearance:
                        AppearanceView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Sound:
                        SoundView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Display:
                        DisplayView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Network:
                        NetworkView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Storage:
                        StorageView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Peripherals:
                        PeripheralsView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Energy:
                        EnergyView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Activity:
                        ActivityView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Apple_Intelligence:
                        AppleIntelligenceView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .App_Cleaner:
                        AppCleanerView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Security_Check:
                        SecurityCheckView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Learning:
                        LearningView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    case .Restore:
                        RestoreView().navigationTitle(String(describing: formatPageEnum(page: selectedPage)))
                    }
                }
            }.padding(EdgeInsets(top: CGFloat(8), leading: CGFloat(0), bottom: CGFloat(0), trailing: CGFloat(0)))
        }
    }
}

#Preview() {
    MainView()
        .frame(width: 800, height: 600)
}
