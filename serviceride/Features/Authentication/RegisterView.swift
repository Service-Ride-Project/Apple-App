import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var password = ""

    var body: some View {
        Form {
            Section("Data pelanggan") {
                TextField("Nama lengkap", text: $name)
                    .textContentType(.name)
                TextField("Email", text: $email)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                TextField("Nomor telepon", text: $phone)
                    .keyboardType(.phonePad)
                SecureField("Kata sandi", text: $password)
            }
            Section {
                PreviewNotice(text: "Pendaftaran dan verifikasi email belum terhubung ke layanan akun.")
                Button("Daftar") { }.disabled(true)
            }
        }
        .navigationTitle("Daftar")
        .serviceRideScreen()
    }
}
