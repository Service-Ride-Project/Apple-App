import SwiftUI

struct WorkshopListView: View {
    @State private var searchText = ""

    private var workshops: [PreviewWorkshop] {
        searchText.isEmpty ? PreviewWorkshops.all : PreviewWorkshops.all.filter {
            $0.name.localizedCaseInsensitiveContains(searchText) || $0.area.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                PreviewNotice(text: "Daftar ini menggunakan bengkel fiktif yang sama dengan peta Surabaya.")
                ForEach(workshops) { workshop in
                    NavigationLink {
                        WorkshopDetailView(workshop: workshop)
                    } label: {
                        WorkshopMapCard(workshop: workshop)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(16)
        }
        .searchable(text: $searchText, prompt: "Cari nama atau kawasan")
        .navigationTitle("Daftar Bengkel")
        .serviceRideScreen()
    }
}
