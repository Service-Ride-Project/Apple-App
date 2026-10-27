import MapKit
import SwiftUI

struct WorkshopMapView: View {
    @Binding var selectedWorkshop: PreviewWorkshop?
    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: PreviewWorkshops.surabaya,
            span: MKCoordinateSpan(latitudeDelta: 0.22, longitudeDelta: 0.24)
        )
    )

    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(PreviewWorkshops.all) { workshop in
                Annotation(workshop.name, coordinate: workshop.coordinate, anchor: .bottom) {
                    Button {
                        selectedWorkshop = workshop
                    } label: {
                        WorkshopMapMarker(isSelected: selectedWorkshop?.id == workshop.id)
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel("Buka \(workshop.name)")
                }
            }
        }
        .mapStyle(.standard(elevation: .flat))
        .mapControls { MapCompass() }
        .overlay(alignment: .topLeading) {
            Text("DATA CONTOH")
                .font(.caption.bold())
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .glassEffect()
                .padding(12)
        }
        .accessibilityLabel("Peta bengkel contoh di Surabaya")
    }
}
