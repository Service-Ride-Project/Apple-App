import SwiftUI

struct OrderListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "shippingbox", title: "Belum ada pesanan", message: "Status pembayaran dan pengiriman akan tampil setelah Anda berbelanja.")
                NavigationLink("Jelajahi produk") { ProductListView() }
                    .buttonStyle(.glassProminent)
                NavigationLink("Pratinjau detail pesanan") { OrderDetailView() }
            }
            .padding(16)
        }
        .navigationTitle("Pesanan Saya")
        .serviceRideScreen()
    }
}
