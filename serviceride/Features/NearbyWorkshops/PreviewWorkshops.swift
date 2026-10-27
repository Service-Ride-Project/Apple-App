import CoreLocation

struct PreviewWorkshop: Identifiable {
    let id: String
    let name: String
    let area: String
    let address: String
    let rating: String
    let services: [String]
    let coordinate: CLLocationCoordinate2D
}

enum PreviewWorkshops {
    static let surabaya = CLLocationCoordinate2D(latitude: -7.2575, longitude: 112.7521)

    // Data fiktif hanya untuk demonstrasi peta dan antarmuka.
    static let all: [PreviewWorkshop] = [
        .init(id: "gubeng", name: "Bengkel Contoh Gubeng", area: "Gubeng", address: "Kawasan Gubeng, Surabaya", rating: "4,8", services: ["Servis berkala", "Rem"], coordinate: .init(latitude: -7.2756, longitude: 112.7529)),
        .init(id: "rungkut", name: "Bengkel Contoh Rungkut", area: "Rungkut", address: "Kawasan Rungkut, Surabaya", rating: "4,7", services: ["Servis berkala", "Kelistrikan"], coordinate: .init(latitude: -7.3232, longitude: 112.7674)),
        .init(id: "sukolilo", name: "Bengkel Contoh Sukolilo", area: "Sukolilo", address: "Kawasan Sukolilo, Surabaya", rating: "4,6", services: ["Diagnosa", "AC"], coordinate: .init(latitude: -7.2928, longitude: 112.7962)),
        .init(id: "wonokromo", name: "Bengkel Contoh Wonokromo", area: "Wonokromo", address: "Kawasan Wonokromo, Surabaya", rating: "4,9", services: ["Servis berkala", "Ban"], coordinate: .init(latitude: -7.3081, longitude: 112.7345)),
        .init(id: "tandes", name: "Bengkel Contoh Tandes", area: "Tandes", address: "Kawasan Tandes, Surabaya", rating: "4,7", services: ["Servis berkala", "Rem"], coordinate: .init(latitude: -7.2520, longitude: 112.6714))
    ]
}
