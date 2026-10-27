import SwiftUI

struct WorkshopDetailView: View {
    let workshop: PreviewWorkshop

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                PreviewNotice(text: "Profil bengkel ini adalah contoh antarmuka, bukan mitra Service Ride yang nyata.")
                SectionCard(title: workshop.name) {
                    Label(workshop.address, systemImage: "mappin.and.ellipse")
                        .font(.subheadline)
                    Label("\(workshop.rating) / 5 · penilaian contoh", systemImage: "star.fill")
                        .font(.subheadline)
                        .foregroundStyle(.orange)
                }
                SectionCard(title: "Layanan") {
                    ForEach(workshop.services, id: \.self) { service in
                        Label(service, systemImage: "checkmark.circle.fill")
                            .foregroundStyle(AppColors.brand)
                    }
                }
                GlassEffectContainer(spacing: 12) {
                    HStack(spacing: 12) {
                        NavigationLink("Booking servis") {
                            CreateBookingView(preselectedWorkshop: workshop.name)
                        }
                        .buttonStyle(.glassProminent)
                        NavigationLink("Ulasan") {
                            WorkshopReviewsView()
                        }
                        .buttonStyle(.glass)
                    }
                }
            }
            .padding(16)
        }
        .navigationTitle("Detail Bengkel")
        .serviceRideScreen()
    }
}
