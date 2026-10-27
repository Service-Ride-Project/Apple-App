import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var emailEnabled = false

    var body: some View {
        Form {
            Section("Notifikasi") {
                Toggle("Notifikasi aplikasi", isOn: $notificationsEnabled)
                Toggle("Pembaruan email", isOn: $emailEnabled)
            }
            Section("Tampilan") {
                Label("Mengikuti tampilan sistem", systemImage: "circle.lefthalf.filled")
            }
            Section {
                PreviewNotice(text: "Pilihan ini hanya berubah secara lokal dan belum disimpan.")
            }
        }
        .navigationTitle("Pengaturan")
        .serviceRideScreen()
    }
}
