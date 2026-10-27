import SwiftUI

struct ValueRow: View {
    let label: String
    var value: String = "—"

    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 12) {
            Text(label).foregroundStyle(.secondary)
            Spacer(minLength: 12)
            Text(value).fontWeight(.medium).multilineTextAlignment(.trailing)
        }
        .font(.subheadline)
        .padding(.vertical, 5)
    }
}
