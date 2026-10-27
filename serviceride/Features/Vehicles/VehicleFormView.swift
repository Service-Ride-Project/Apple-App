import SwiftUI

struct VehicleFormView: View {
    @State private var brand = ""
    @State private var model = ""
    @State private var plate = ""
    @State private var year = ""
    @State private var kind = "Motor"

    var body: some View {
        Form {
            Section("Identitas kendaraan") {
                Picker("Jenis", selection: $kind) {
                    Text("Motor").tag("Motor")
                    Text("Mobil").tag("Mobil")
                }
                TextField("Merek", text: $brand)
                TextField("Model", text: $model)
                TextField("Tahun", text: $year).keyboardType(.numberPad)
                TextField("Nomor polisi", text: $plate)
                    .textInputAutocapitalization(.characters)
            }
            Section {
                PreviewNotice(text: "Data kendaraan belum dapat disimpan pada pratinjau ini.")
                Button("Simpan kendaraan") { }.disabled(true)
            }
        }
        .navigationTitle("Tambah Kendaraan")
        .serviceRideScreen()
    }
}
