import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Detail produk akan muncul dari katalog bengkel aktif.")
                SectionCard(title: "Spare part") {
                    ValueRow(label: "Nama produk")
                    ValueRow(label: "Bengkel penjual")
                    ValueRow(label: "Harga")
                    ValueRow(label: "Stok tersedia")
                }
                Button("Tambah ke keranjang") { }.disabled(true)
            }
            .padding(16)
        }
        .navigationTitle("Detail Produk")
        .serviceRideScreen()
    }
}
