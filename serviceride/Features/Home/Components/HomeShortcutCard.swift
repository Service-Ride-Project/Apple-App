import SwiftUI

struct HomeShortcutCard: View {
    let title: String
    let subtitle: String
    let symbol: String

    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Image(systemName: symbol)
                .font(.title3)
                .foregroundStyle(AppColors.brand)
                .frame(width: 40, height: 40)
                .background(AppColors.brand.opacity(0.1), in: RoundedRectangle(cornerRadius: 12))
            Text(title).font(.headline).foregroundStyle(.primary)
            Text(subtitle).font(.caption).foregroundStyle(.secondary)
                .multilineTextAlignment(.leading)
        }
        .frame(maxWidth: .infinity, minHeight: 115, alignment: .topLeading)
        .padding(16)
        .background(AppColors.card, in: RoundedRectangle(cornerRadius: 18))
    }
}
