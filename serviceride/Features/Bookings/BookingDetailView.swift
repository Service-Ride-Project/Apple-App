import SwiftUI

struct BookingDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Detail booking akan tersedia setelah permintaan tersimpan.")
                SectionCard(title: "Ringkasan booking") {
                    ValueRow(label: "Bengkel")
                    ValueRow(label: "Kendaraan")
                    ValueRow(label: "Jadwal")
                    ValueRow(label: "Metode penyerahan")
                    ValueRow(label: "Status")
                }
                SectionCard(title: "Lanjutkan") {
                    NavigationLink("Lihat estimasi") { EstimateDetailView() }
                    NavigationLink("Progres servis") { ServiceProgressView() }
                    NavigationLink("Informasi pickup") { PickupDetailView() }
                }
            }
            .padding(16)
        }
        .navigationTitle("Detail Booking")
        .serviceRideScreen()
    }
}
