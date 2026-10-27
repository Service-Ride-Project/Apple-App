import SwiftUI

struct PickupDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Informasi pickup akan tampil untuk booking dengan layanan penjemputan.")
                SectionCard(title: "Penjemputan dan pengantaran") {
                    ValueRow(label: "Alamat pickup")
                    ValueRow(label: "Jadwal")
                    ValueRow(label: "Petugas")
                    ValueRow(label: "Status perjalanan")
                }
                NavigationLink("Lihat rancangan pelacakan") { PickupTrackingView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Detail Pickup")
        .serviceRideScreen()
    }
}
