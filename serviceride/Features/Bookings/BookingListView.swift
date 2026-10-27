import SwiftUI

struct BookingListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "calendar", title: "Belum ada booking", message: "Jadwal servis dan status permintaan Anda akan muncul di sini.")
                NavigationLink("Buat booking servis") { CreateBookingView() }
                    .buttonStyle(.glassProminent)
                NavigationLink("Pratinjau detail booking") { BookingDetailView() }
            }
            .padding(16)
        }
        .navigationTitle("Booking Saya")
        .toolbar {
            NavigationLink { CreateBookingView() } label: { Image(systemName: "plus") }
        }
        .serviceRideScreen()
    }
}
