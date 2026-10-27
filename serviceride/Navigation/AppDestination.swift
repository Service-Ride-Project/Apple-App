import SwiftUI

enum AppDestination: String, CaseIterable, Identifiable {
    case home, nearby, service, marketplace, account

    var id: Self { self }

    var title: String {
        switch self {
        case .home: "Beranda"
        case .nearby: "Bengkel Terdekat"
        case .service: "Servis"
        case .marketplace: "Marketplace"
        case .account: "Akun"
        }
    }

    var symbol: String {
        switch self {
        case .home: "house"
        case .nearby: "map"
        case .service: "wrench.and.screwdriver"
        case .marketplace: "bag"
        case .account: "person.crop.circle"
        }
    }

    @ViewBuilder var rootView: some View {
        switch self {
        case .home: HomeView()
        case .nearby: NearbyWorkshopsView()
        case .service: ServiceHistoryView()
        case .marketplace: MarketplaceView()
        case .account: ProfileView()
        }
    }
}
