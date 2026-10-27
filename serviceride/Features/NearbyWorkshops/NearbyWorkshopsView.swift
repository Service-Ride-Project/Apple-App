import SwiftUI

struct NearbyWorkshopsView: View {
    @State private var selectedWorkshop: PreviewWorkshop?

    var body: some View {
        GeometryReader { geometry in
            if geometry.size.width >= 700 {
                HStack(spacing: 0) {
                    WorkshopMapView(selectedWorkshop: $selectedWorkshop)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    workshopList
                        .frame(width: min(360, geometry.size.width * 0.38))
                        .background(AppColors.canvas)
                }
            } else {
                ScrollView {
                    VStack(spacing: 16) {
                        WorkshopMapView(selectedWorkshop: $selectedWorkshop)
                            .frame(height: max(320, geometry.size.height * 0.46))
                            .clipShape(RoundedRectangle(cornerRadius: 22))
                        workshopRows
                    }
                    .padding(16)
                }
                .background(AppColors.canvas)
            }
        }
        .navigationTitle("Bengkel Terdekat")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $selectedWorkshop) { workshop in
            NavigationStack {
                WorkshopPreviewView(workshop: workshop)
            }
            .presentationDetents([.height(330), .medium])
            .presentationDragIndicator(.visible)
        }
    }

    private var workshopList: some View {
        ScrollView {
            workshopRows
                .padding(16)
        }
    }

    private var workshopRows: some View {
        VStack(alignment: .leading, spacing: 12) {
            PreviewNotice(text: "Lima bengkel berikut adalah data fiktif untuk pratinjau. Peta tidak memakai lokasi Anda.")
            Text("Jelajahi kawasan Surabaya")
                .font(.title3.bold())
            ForEach(PreviewWorkshops.all) { workshop in
                Button {
                    selectedWorkshop = workshop
                } label: {
                    WorkshopMapCard(workshop: workshop)
                }
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview("Bengkel Terdekat") {
    NavigationStack { NearbyWorkshopsView() }
}
