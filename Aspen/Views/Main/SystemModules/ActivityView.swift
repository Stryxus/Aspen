//
//  ActivityPageView.swift
//  Aspen
//
//  Created by Connor Shearer on 14/12/2024.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        Text("This page will basically be activity monitor but far more granular and customizable. You can add anything you want to the menu bar, or add widgets, perhaps have notifications. This WILL NOT include activity monitor's energy view. Activity can also be logged to a file or even be recorded historically for a specified time period, and even per process.")
        Spacer()
        Text("Acitivty monitor does not group processes by app so this should also be done.")
    }
}

#Preview {
    ActivityView()
}
