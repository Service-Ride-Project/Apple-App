import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        Form {
            Section {
                HStack(spacing: 14) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                        .padding(10)
                        .background(AppColors.brand, in: RoundedRectangle(cornerRadius: 14))
                    VStack(alignment: .leading) {
                        Text("Service Ride").font(.title2.bold())
                        Text("Pratinjau aplikasi Customer").font(.footnote).foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 8)
            }
            Section("Masuk") {
                TextField("Email", text: $email)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                SecureField("Kata sandi", text: $password)
                    .textContentType(.password)
            }
            Section {
                Button("Lanjut ke pratinjau") { dismiss() }
                    .buttonStyle(.glassProminent)
                NavigationLink("Buat akun") { RegisterView() }
                NavigationLink("Lupa kata sandi?") { ForgotPasswordView() }
            } footer: {
                Text("Tidak ada autentikasi atau pengiriman data pada tahap UI ini.")
            }
        }
        .navigationTitle("Masuk")
        .serviceRideScreen()
    }
}
