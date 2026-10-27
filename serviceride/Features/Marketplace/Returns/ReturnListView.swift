import SwiftUI

struct ReturnListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "arrow.uturn.backward", title: "Belum ada retur", message: "Pengajuan retur dan hasil peninjauannya akan tampil di sini.")
                NavigationLink("Lihat formulir retur") { ReturnRequestView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Retur Saya")
        .serviceRideScreen()
    }
}
