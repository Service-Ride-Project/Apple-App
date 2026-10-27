import SwiftUI

struct RootTabView: View {
    @State private var selection: AppDestination = .home

    var body: some View {
        TabView(selection: $selection) {
            ForEach(AppDestination.allCases) { destination in
                Tab(destination.title, systemImage: destination.symbol, value: destination) {
                    NavigationStack {
                        destination.rootView
                    }
                }
            }
        }
        .tint(AppColors.brand)
    }
}

#Preview("iPhone") {
    RootTabView()
}
