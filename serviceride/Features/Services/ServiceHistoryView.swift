import SwiftUI

struct ServiceHistoryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                SectionCard(title: "Layanan servis") {
                    NavigationLink("Booking saya") { BookingListView() }
                    NavigationLink("Buat booking") { CreateBookingView() }
                    NavigationLink("Riwayat kendaraan") { VehicleListView() }
                    NavigationLink("Pratinjau detail servis") { ServiceDetailView() }
                }
                EmptyStateView(symbol: "wrench.and.screwdriver", title: "Belum ada riwayat servis", message: "Pemeriksaan, estimasi, dan progres pekerjaan akan tampil setelah booking diproses.")
                SectionCard(title: "Dokumen dan pembayaran") {
                    NavigationLink("Estimasi biaya") { EstimateDocumentView() }
                    NavigationLink("Invoice final") { InvoiceDetailView() }
                    NavigationLink("Riwayat pembayaran") { PaymentHistoryView() }
                }
            }
            .padding(16)
            .frame(maxWidth: 800)
            .frame(maxWidth: .infinity)
        }
        .navigationTitle("Servis")
        .serviceRideScreen()
    }
}
