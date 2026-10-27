import SwiftUI

struct ScreenBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(AppColors.canvas.ignoresSafeArea())
            .tint(AppColors.brand)
    }
}

extension View {
    func serviceRideScreen() -> some View {
        modifier(ScreenBackground())
    }
}
