import SwiftUI

struct PreviewNotice: View {
    let text: String

    var body: some View {
        Label(text, systemImage: "info.circle")
            .font(.footnote)
            .foregroundStyle(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(14)
            .background(AppColors.brand.opacity(0.08), in: RoundedRectangle(cornerRadius: 14))
    }
}
