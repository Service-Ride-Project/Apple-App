import SwiftUI

struct OrderDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Status pesanan dan pengiriman akan tersedia setelah transaksi dibuat.")
                SectionCard(title: "Rincian pesanan") {
                    ValueRow(label: "Nomor pesanan")
                    ValueRow(label: "Produk")
                    ValueRow(label: "Bengkel")
                    ValueRow(label: "Status pembayaran")
                    ValueRow(label: "Ekspedisi dan resi")
                }
                NavigationLink("Ajukan retur") { ReturnRequestView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Detail Pesanan")
        .serviceRideScreen()
    }
}
