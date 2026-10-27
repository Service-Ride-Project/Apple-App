import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "cart", title: "Keranjang kosong", message: "Pilih spare part dari katalog untuk melanjutkan.")
                NavigationLink("Jelajahi produk") { ProductListView() }
                    .buttonStyle(.glassProminent)
                NavigationLink("Lihat tata letak checkout") { CheckoutView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Keranjang")
        .serviceRideScreen()
    }
}
