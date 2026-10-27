import SwiftUI

struct WorkshopReviewsView: View {
    var body: some View {
        EmptyStateView(symbol: "star.bubble", title: "Ulasan belum tersedia", message: "Ulasan pelanggan akan tampil saat data bengkel terhubung.")
            .navigationTitle("Ulasan Bengkel")
            .serviceRideScreen()
    }
}
