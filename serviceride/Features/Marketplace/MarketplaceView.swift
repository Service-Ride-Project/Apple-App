import SwiftUI

struct MarketplaceView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                SectionCard(title: "Spare part untuk kendaraan Anda") {
                    Text("Belanja online dari bengkel mitra dengan pengiriman ekspedisi.")
                        .font(.subheadline).foregroundStyle(.secondary)
                    NavigationLink("Jelajahi produk") { ProductListView() }
                        .buttonStyle(.glassProminent)
                }
                SectionCard(title: "Aktivitas belanja") {
                    NavigationLink("Keranjang") { CartView() }
                    NavigationLink("Pesanan saya") { OrderListView() }
                    NavigationLink("Retur saya") { ReturnListView() }
                }
                EmptyStateView(symbol: "bag", title: "Katalog belum tersedia", message: "Produk akan tampil setelah katalog bengkel terhubung.")
            }
            .padding(16)
            .frame(maxWidth: 800)
            .frame(maxWidth: .infinity)
        }
        .navigationTitle("Marketplace")
        .serviceRideScreen()
    }
}
