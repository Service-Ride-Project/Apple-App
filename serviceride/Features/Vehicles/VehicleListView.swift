import SwiftUI

struct VehicleListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "car.side", title: "Belum ada kendaraan", message: "Tambahkan kendaraan untuk memulai booking servis.")
                NavigationLink("Tambah kendaraan") { VehicleFormView() }
                    .buttonStyle(.glassProminent)
                NavigationLink("Pratinjau detail kendaraan") { VehicleDetailView() }
            }
            .padding(16)
        }
        .navigationTitle("Kendaraan Saya")
        .toolbar {
            NavigationLink { VehicleFormView() } label: { Image(systemName: "plus") }
        }
        .serviceRideScreen()
    }
}
