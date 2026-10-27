import SwiftUI

struct ReviewFormView: View {
    @State private var kind = "Servis"
    @State private var rating = 0
    @State private var review = ""

    var body: some View {
        Form {
            Section("Transaksi") {
                Picker("Jenis", selection: $kind) {
                    Text("Servis").tag("Servis")
                    Text("Marketplace").tag("Marketplace")
                }
                Text("Pilih transaksi selesai setelah data tersedia.")
                    .font(.footnote).foregroundStyle(.secondary)
            }
            Section("Penilaian") {
                HStack(spacing: 10) {
                    ForEach(1...5, id: \.self) { value in
                        Button {
                            rating = value
                        } label: {
                            Image(systemName: value <= rating ? "star.fill" : "star")
                                .font(.title2)
                                .foregroundStyle(.orange)
                        }
                        .buttonStyle(.plain)
                        .accessibilityLabel("\(value) bintang")
                    }
                }
                TextField("Ceritakan pengalaman Anda", text: $review, axis: .vertical)
                    .lineLimit(4...7)
            }
            Section {
                PreviewNotice(text: "Ulasan dapat disunting selama 24 jam setelah dibuat. Pratinjau ini tidak mengirim ulasan.")
                Button("Kirim ulasan") { }.disabled(true)
            }
        }
        .navigationTitle("Tulis Ulasan")
        .serviceRideScreen()
    }
}
