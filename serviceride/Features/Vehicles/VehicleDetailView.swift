import SwiftUI

struct VehicleDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Rincian kendaraan akan tampil setelah kendaraan tersimpan.")
                SectionCard(title: "Informasi kendaraan") {
                    ValueRow(label: "Merek dan model")
                    ValueRow(label: "Nomor polisi")
                    ValueRow(label: "Tahun")
                }
                SectionCard(title: "Riwayat servis") {
                    EmptyStateView(symbol: "wrench.and.screwdriver", title: "Belum ada riwayat", message: "Riwayat servis kendaraan akan ditampilkan di sini.")
                }
            }
            .padding(16)
        }
        .navigationTitle("Detail Kendaraan")
        .serviceRideScreen()
    }
}
