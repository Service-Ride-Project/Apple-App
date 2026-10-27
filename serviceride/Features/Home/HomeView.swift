import SwiftUI

struct HomeView: View {
    private let columns = [GridItem(.flexible(), spacing: 12), GridItem(.flexible(), spacing: 12)]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {
                hero
                VStack(alignment: .leading, spacing: 12) {
                    Text("Mulai dari sini").font(.title2.bold())
                    LazyVGrid(columns: columns, spacing: 12) {
                        NavigationLink { WorkshopListView() } label: {
                            HomeShortcutCard(title: "Cari bengkel", subtitle: "Jelajahi bengkel contoh", symbol: "magnifyingglass")
                        }
                        NavigationLink { CreateBookingView() } label: {
                            HomeShortcutCard(title: "Booking servis", subtitle: "Pickup atau datang langsung", symbol: "calendar.badge.plus")
                        }
                        NavigationLink { VehicleListView() } label: {
                            HomeShortcutCard(title: "Kendaraan", subtitle: "Kelola kendaraan Anda", symbol: "car.side")
                        }
                        NavigationLink { NotificationListView() } label: {
                            HomeShortcutCard(title: "Notifikasi", subtitle: "Lihat pembaruan aktivitas", symbol: "bell")
                        }
                    }
                    .buttonStyle(.plain)
                }
                SectionCard(title: "Aktivitas Anda") {
                    EmptyStateView(symbol: "clock.arrow.circlepath", title: "Belum ada aktivitas", message: "Booking, servis, dan pesanan Anda akan tampil di sini.")
                }
            }
            .padding(16)
            .frame(maxWidth: 900)
            .frame(maxWidth: .infinity)
        }
        .navigationTitle("Beranda")
        .serviceRideScreen()
    }

    private var hero: some View {
        VStack(alignment: .leading, spacing: 17) {
            HStack(spacing: 12) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 38, height: 38)
                    .accessibilityLabel("Logo placeholder Service Ride")
                Text("Service Ride")
                    .font(.headline)
                    .foregroundStyle(.white)
            }
            Text("Servis kendaraan, lebih mudah")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)
                .fixedSize(horizontal: false, vertical: true)
            Text("Temukan bengkel, atur jadwal, dan pantau perjalanan servis dalam satu tempat.")
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.9))
            GlassEffectContainer(spacing: 12) {
                ViewThatFits(in: .horizontal) {
                    HStack(spacing: 12) {
                        NavigationLink("Lihat bengkel") { WorkshopListView() }
                            .buttonStyle(.glassProminent)
                        NavigationLink("Peta Surabaya") { NearbyWorkshopsView() }
                            .buttonStyle(.glass)
                    }
                    VStack(alignment: .leading, spacing: 12) {
                        NavigationLink("Lihat bengkel") { WorkshopListView() }
                            .buttonStyle(.glassProminent)
                        NavigationLink("Peta Surabaya") { NearbyWorkshopsView() }
                            .buttonStyle(.glass)
                    }
                }
                .tint(AppColors.brandDeep)
            }
        }
        .padding(22)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(colors: [AppColors.brandDeep, AppColors.brand], startPoint: .topLeading, endPoint: .bottomTrailing),
            in: RoundedRectangle(cornerRadius: 26)
        )
    }
}

#Preview("Beranda") {
    NavigationStack { HomeView() }
}
