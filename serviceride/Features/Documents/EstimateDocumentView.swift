import SwiftUI

struct EstimateDocumentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Dokumen estimasi diterbitkan sebelum persetujuan pelanggan dan terpisah dari invoice final.")
                SectionCard(title: "Estimasi biaya") {
                    ValueRow(label: "Nomor dokumen")
                    ValueRow(label: "Pekerjaan")
                    ValueRow(label: "Komponen")
                    ValueRow(label: "Biaya")
                }
                NavigationLink("Lihat rincian estimasi") { EstimateDetailView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Dokumen Estimasi")
        .serviceRideScreen()
    }
}
