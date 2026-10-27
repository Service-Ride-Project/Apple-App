import SwiftUI

struct ComplaintListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                EmptyStateView(symbol: "exclamationmark.bubble", title: "Belum ada keluhan", message: "Laporan dan tindak lanjut terkait servis atau bengkel akan tampil di sini.")
                NavigationLink("Buat keluhan") { ComplaintFormView() }
                    .buttonStyle(.glass)
            }
            .padding(16)
        }
        .navigationTitle("Keluhan Saya")
        .serviceRideScreen()
    }
}
