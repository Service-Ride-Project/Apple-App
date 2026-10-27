import SwiftUI

struct ComplaintFormView: View {
    @State private var kind = "Servis"
    @State private var reference = ""
    @State private var explanation = ""

    var body: some View {
        Form {
            Section("Transaksi terkait") {
                Picker("Jenis", selection: $kind) {
                    Text("Servis").tag("Servis")
                    Text("Marketplace").tag("Marketplace")
                }
                TextField("Referensi transaksi", text: $reference)
            }
            Section("Keluhan") {
                TextField("Jelaskan keluhan Anda", text: $explanation, axis: .vertical)
                    .lineLimit(4...7)
                Label("Lampirkan bukti saat layanan tersedia", systemImage: "paperclip")
                    .foregroundStyle(.secondary)
            }
            Section {
                PreviewNotice(text: "Keluhan belum dapat dikirim. Bukti dan riwayat transaksi akan diperlukan untuk peninjauan.")
                Button("Kirim keluhan") { }.disabled(true)
            }
        }
        .navigationTitle("Buat Keluhan")
        .serviceRideScreen()
    }
}
