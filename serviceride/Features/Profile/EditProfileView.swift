import SwiftUI

struct EditProfileView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""

    var body: some View {
        Form {
            Section("Informasi pribadi") {
                TextField("Nama lengkap", text: $name)
                    .textContentType(.name)
                TextField("Email", text: $email)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                TextField("Nomor telepon", text: $phone)
                    .keyboardType(.phonePad)
            }
            Section {
                PreviewNotice(text: "Perubahan profil belum dapat disimpan tanpa layanan akun.")
                Button("Simpan perubahan") { }.disabled(true)
            }
        }
        .navigationTitle("Ubah Profil")
        .serviceRideScreen()
    }
}
