import SwiftUI

struct ReturnRequestView: View {
    @State private var orderReference = ""
    @State private var reason = ""

    var body: some View {
        Form {
            Section("Pengajuan retur") {
                TextField("Nomor pesanan", text: $orderReference)
                TextField("Alasan retur", text: $reason, axis: .vertical)
                    .lineLimit(3...5)
            }
            Section("Bukti") {
                Label("Unggah foto bukti saat layanan tersedia", systemImage: "photo.badge.plus")
                    .foregroundStyle(.secondary)
            }
            Section {
                PreviewNotice(text: "Retur dapat diajukan paling lama satu hari setelah barang diterima. Keputusan dan refund memerlukan peninjauan.")
                Button("Ajukan retur") { }.disabled(true)
            }
        }
        .navigationTitle("Ajukan Retur")
        .serviceRideScreen()
    }
}
