import SwiftUI

struct EstimateDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Estimasi biaya dan bukti pemeriksaan akan muncul setelah mekanik menyusunnya. Persetujuan belum dapat diproses.")
                SectionCard(title: "Rincian estimasi") {
                    ValueRow(label: "Pekerjaan")
                    ValueRow(label: "Komponen")
                    ValueRow(label: "Biaya jasa")
                    ValueRow(label: "Perkiraan selesai")
                }
                SectionCard(title: "Bukti pemeriksaan") {
                    EmptyStateView(symbol: "photo", title: "Belum ada bukti", message: "Foto pemeriksaan akan tampil di sini.")
                }
                SectionCard(title: "Keputusan pelanggan") {
                    Text("Setujui atau tolak estimasi setelah rincian lengkap diterima.")
                        .font(.footnote).foregroundStyle(.secondary)
                    HStack {
                        Button("Setujui") { }.disabled(true)
                        Button("Tolak") { }.disabled(true)
                    }
                }
            }
            .padding(16)
        }
        .navigationTitle("Detail Estimasi")
        .serviceRideScreen()
    }
}
