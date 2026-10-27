import SwiftUI

struct PaymentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Metode online sementara adalah Dummy QRIS Service Ride. Pembayaran tunai tidak tersedia untuk Customer.")
                SectionCard(title: "Pembayaran QRIS") {
                    EmptyStateView(symbol: "qrcode", title: "Belum ada tagihan", message: "Kode QR dan nominal akan tampil setelah transaksi tersedia.")
                }
                SectionCard(title: "Lainnya") {
                    NavigationLink("Riwayat pembayaran") { PaymentHistoryView() }
                    NavigationLink("Saldo refund") { WalletView() }
                }
            }
            .padding(16)
        }
        .navigationTitle("Pembayaran")
        .serviceRideScreen()
    }
}
