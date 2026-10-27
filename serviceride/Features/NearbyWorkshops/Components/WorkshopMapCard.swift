import SwiftUI

struct WorkshopMapCard: View {
    let workshop: PreviewWorkshop

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(workshop.name).font(.headline)
                    Text(workshop.address).font(.subheadline).foregroundStyle(.secondary)
                }
                Spacer(minLength: 8)
                Label(workshop.rating, systemImage: "star.fill")
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(.orange)
            }
            Text(workshop.services.joined(separator: " · "))
                .font(.caption)
                .foregroundStyle(.secondary)
            Text("DATA CONTOH · \(workshop.area.uppercased())")
                .font(.caption2.weight(.semibold))
                .foregroundStyle(AppColors.brand)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColors.card, in: RoundedRectangle(cornerRadius: 18))
    }
}
