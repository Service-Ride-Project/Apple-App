import SwiftUI

struct ServiceDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Rincian servis akan tersedia setelah pekerjaan tercatat.")
                SectionCard(title: "Pemeriksaan kendaraan") {
                    ValueRow(label: "Diagnosis")
                    ValueRow(label: "Komponen")
                    ValueRow(label: "Bukti foto")
                }
                SectionCard(title: "Tahap berikutnya") {
                    NavigationLink("Lihat estimasi") { EstimateDetailView() }
                    NavigationLink("Lihat progres") { ServiceProgressView() }
                    NavigationLink("Lihat invoice final") { InvoiceDetailView() }
                }
            }
            .padding(16)
        }
        .navigationTitle("Detail Servis")
        .serviceRideScreen()
    }
}
