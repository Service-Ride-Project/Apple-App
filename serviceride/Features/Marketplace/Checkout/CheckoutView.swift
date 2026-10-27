import SwiftUI

struct CheckoutView: View {
    @State private var recipient = ""
    @State private var phone = ""
    @State private var address = ""

    var body: some View {
        Form {
            Section("Alamat pengiriman") {
                TextField("Nama penerima", text: $recipient)
                TextField("Nomor telepon", text: $phone).keyboardType(.phonePad)
                TextField("Alamat lengkap", text: $address, axis: .vertical)
                    .lineLimit(3...5)
            }
            Section("Pembayaran") {
                Label("Dummy QRIS Service Ride", systemImage: "qrcode")
                PreviewNotice(text: "Nominal dan kode QR hanya dapat ditampilkan setelah ada item serta transaksi yang valid.")
            }
            Section {
                Button("Konfirmasi pesanan") { }.disabled(true)
            } footer: {
                Text("Checkout tidak membuat pesanan atau memproses pembayaran pada pratinjau ini.")
            }
        }
        .navigationTitle("Checkout")
        .serviceRideScreen()
    }
}
