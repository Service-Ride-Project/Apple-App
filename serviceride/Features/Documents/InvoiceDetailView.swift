import SwiftUI

struct InvoiceDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Invoice final baru tersedia setelah transaksi servis selesai.")
                SectionCard(title: "Invoice final") {
                    ValueRow(label: "Nomor invoice")
                    ValueRow(label: "Tanggal")
                    ValueRow(label: "Pekerjaan")
                    ValueRow(label: "Status pembayaran")
                }
                EmptyStateView(symbol: "doc.text", title: "Invoice belum tersedia", message: "Dokumen final akan tampil setelah layanan data terhubung.")
            }
            .padding(16)
        }
        .navigationTitle("Invoice Final")
        .serviceRideScreen()
    }
}
