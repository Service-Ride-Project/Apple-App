import SwiftUI

struct WorkshopMapMarker: View {
    let isSelected: Bool

    var body: some View {
        Image(systemName: "wrench.and.screwdriver.fill")
            .font(.system(size: 17, weight: .semibold))
            .foregroundStyle(.white)
            .frame(width: isSelected ? 48 : 42, height: isSelected ? 48 : 42)
            .background(isSelected ? AppColors.teal : AppColors.brand, in: Circle())
            .overlay(Circle().stroke(.white, lineWidth: 3))
            .shadow(color: .black.opacity(0.2), radius: 6, y: 4)
            .accessibilityLabel("Penanda bengkel contoh")
    }
}
