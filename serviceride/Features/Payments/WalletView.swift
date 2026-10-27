import SwiftUI

struct WalletView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                SectionCard(title: "Saldo refund") {
                    Text("—")
                        .font(.largeTitle.bold())
                    Text("Saldo internal hanya digunakan sesuai mekanisme pengembalian yang berlaku.")
                        .font(.footnote).foregroundStyle(.secondary)
                }
                EmptyStateView(symbol: "arrow.uturn.backward.circle", title: "Belum ada riwayat saldo", message: "Pengembalian yang berlaku akan tampil setelah transaksi diproses.")
            }
            .padding(16)
        }
        .navigationTitle("Saldo Saya")
        .serviceRideScreen()
    }
}
