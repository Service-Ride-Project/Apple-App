import SwiftUI

struct PaymentHistoryView: View {
    var body: some View {
        EmptyStateView(symbol: "creditcard", title: "Belum ada pembayaran", message: "Pembayaran servis, pickup, dan marketplace akan muncul di sini.")
            .navigationTitle("Riwayat Pembayaran")
            .serviceRideScreen()
    }
}
