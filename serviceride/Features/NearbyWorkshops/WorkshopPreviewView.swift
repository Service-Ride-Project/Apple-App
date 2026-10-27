import SwiftUI

struct WorkshopPreviewView: View {
    let workshop: PreviewWorkshop

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            WorkshopMapCard(workshop: workshop)
            NavigationLink {
                WorkshopDetailView(workshop: workshop)
            } label: {
                Label("Lihat Detail", systemImage: "arrow.right")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.glassProminent)
            Spacer(minLength: 0)
        }
        .padding(20)
        .navigationTitle("Ringkasan bengkel")
        .navigationBarTitleDisplayMode(.inline)
        .serviceRideScreen()
    }
}
