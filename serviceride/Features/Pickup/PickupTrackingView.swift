import SwiftUI

struct PickupTrackingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Pelacakan aktif hanya tersedia saat tugas pickup berjalan. Aplikasi tidak membaca GPS Anda.")
                SectionCard(title: "Lokasi terakhir") {
                    EmptyStateView(symbol: "location.slash", title: "Lokasi belum tersedia", message: "Lokasi terakhir dan waktu pembaruan akan muncul saat perjalanan aktif.")
                }
                SectionCard(title: "Perjalanan") {
                    ValueRow(label: "Tahap")
                    ValueRow(label: "Pembaruan terakhir")
                    ValueRow(label: "Serah terima")
                }
            }
            .padding(16)
        }
        .navigationTitle("Pelacakan Pickup")
        .serviceRideScreen()
    }
}
