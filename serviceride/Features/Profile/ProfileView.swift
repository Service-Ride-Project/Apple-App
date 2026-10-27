import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack(spacing: 14) {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 46))
                        .foregroundStyle(AppColors.brand)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Akun Customer").font(.headline)
                        Text("Pratinjau tanpa autentikasi")
                            .font(.footnote).foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 7)
            }
            Section("Akun") {
                NavigationLink { LoginView() } label: { Label("Masuk atau daftar", systemImage: "person.crop.circle") }
                NavigationLink { EditProfileView() } label: { Label("Ubah profil", systemImage: "person.text.rectangle") }
                NavigationLink { AddressListView() } label: { Label("Alamat", systemImage: "mappin.and.ellipse") }
                NavigationLink { VehicleListView() } label: { Label("Kendaraan", systemImage: "car.side") }
            }
            Section("Aktivitas") {
                NavigationLink { BookingListView() } label: { Label("Booking dan servis", systemImage: "wrench.and.screwdriver") }
                NavigationLink { OrderListView() } label: { Label("Pesanan marketplace", systemImage: "bag") }
                NavigationLink { PaymentView() } label: { Label("Pembayaran", systemImage: "creditcard") }
                NavigationLink { NotificationListView() } label: { Label("Notifikasi", systemImage: "bell") }
            }
            Section("Bantuan dan lainnya") {
                NavigationLink { ReviewListView() } label: { Label("Ulasan saya", systemImage: "star") }
                NavigationLink { ComplaintListView() } label: { Label("Keluhan", systemImage: "exclamationmark.bubble") }
                NavigationLink { SettingsView() } label: { Label("Pengaturan", systemImage: "gearshape") }
            }
        }
        .navigationTitle("Akun")
        .serviceRideScreen()
    }
}
