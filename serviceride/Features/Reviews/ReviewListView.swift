import SwiftUI

struct ReviewListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "star", title: "Belum ada ulasan", message: "Anda dapat menilai servis atau pesanan setelah transaksi selesai.")
                NavigationLink("Tulis ulasan") { ReviewFormView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Ulasan Saya")
        .serviceRideScreen()
    }
}
