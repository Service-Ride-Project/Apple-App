import SwiftUI

struct RootSplitView: View {
    @State private var selection: AppDestination? = .home

    var body: some View {
        NavigationSplitView {
            List(AppDestination.allCases, selection: $selection) { destination in
                NavigationLink(value: destination) {
                    Label(destination.title, systemImage: destination.symbol)
                }
            }
            .navigationTitle("Service Ride")
        } detail: {
            NavigationStack {
                (selection ?? .home).rootView
            }
        }
        .tint(AppColors.brand)
    }
}

#Preview("iPad") {
    RootSplitView()
}
