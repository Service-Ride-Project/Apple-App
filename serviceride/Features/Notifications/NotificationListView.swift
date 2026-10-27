import SwiftUI

struct NotificationListView: View {
    var body: some View {
        EmptyStateView(symbol: "bell", title: "Belum ada notifikasi", message: "Pembaruan booking, servis, pickup, pesanan, dan pembayaran akan tampil di sini.")
            .navigationTitle("Notifikasi")
            .serviceRideScreen()
    }
}
