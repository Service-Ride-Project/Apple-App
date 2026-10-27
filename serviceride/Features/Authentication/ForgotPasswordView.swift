import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""

    var body: some View {
        Form {
            Section {
                TextField("Email terdaftar", text: $email)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            } header: {
                Text("Pulihkan akses")
            } footer: {
                Text("Pengiriman tautan pemulihan belum tersedia pada pratinjau ini.")
            }
            Button("Kirim tautan") { }.disabled(true)
        }
        .navigationTitle("Lupa Kata Sandi")
        .serviceRideScreen()
    }
}
