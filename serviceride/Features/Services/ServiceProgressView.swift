import SwiftUI

struct ServiceProgressView: View {
    private let steps = ["Booking diterima", "Pemeriksaan kendaraan", "Estimasi biaya", "Persetujuan pelanggan", "Pengerjaan", "Pemeriksaan akhir", "Selesai"]

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                PreviewNotice(text: "Timeline ini menampilkan urutan tahap, bukan status pekerjaan nyata.")
                SectionCard(title: "Alur servis") {
                    ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                        HStack(alignment: .top, spacing: 12) {
                            Text("\(index + 1)")
                                .font(.caption.bold())
                                .foregroundStyle(AppColors.brand)
                                .frame(width: 27, height: 27)
                                .background(AppColors.brand.opacity(0.1), in: Circle())
                            Text(step)
                            Spacer()
                        }
                        .padding(.vertical, 5)
                    }
                }
                SectionCard(title: "Dokumentasi") {
                    EmptyStateView(symbol: "photo.on.rectangle", title: "Belum ada foto", message: "Bukti pemeriksaan dan hasil pekerjaan akan tampil di sini.")
                }
            }
            .padding(16)
        }
        .navigationTitle("Progres Servis")
        .serviceRideScreen()
    }
}
