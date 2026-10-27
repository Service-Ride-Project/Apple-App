import SwiftUI

struct ProductListView: View {
    @State private var searchText = ""

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Marketplace hanya melayani pembelian online melalui ekspedisi. Tidak ada pengambilan di bengkel.")
                EmptyStateView(symbol: "shippingbox", title: "Produk belum tersedia", message: "Produk dengan stok tersedia akan tampil setelah katalog terhubung.")
                NavigationLink("Pratinjau detail produk") { ProductDetailView() }
            }
            .padding(16)
        }
        .searchable(text: $searchText, prompt: "Cari spare part")
        .navigationTitle("Produk")
        .toolbar {
            NavigationLink { CartView() } label: { Image(systemName: "cart") }
        }
        .serviceRideScreen()
    }
}
