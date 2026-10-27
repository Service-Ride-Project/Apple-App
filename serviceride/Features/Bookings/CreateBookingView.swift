import SwiftUI

struct CreateBookingView: View {
    var preselectedWorkshop: String = ""
    @State private var workshop = ""
    @State private var vehicle = ""
    @State private var service = "Servis berkala"
    @State private var delivery = "Datang langsung"
    @State private var schedule = Date()
    @State private var address = ""
    @State private var complaint = ""
    @State private var showSummary = false

    var body: some View {
        Form {
            Section("Bengkel dan kendaraan") {
                TextField("Nama bengkel", text: $workshop)
                TextField("Kendaraan", text: $vehicle)
                Picker("Layanan", selection: $service) {
                    Text("Servis berkala").tag("Servis berkala")
                    Text("Perbaikan").tag("Perbaikan")
                }
            }
            Section("Jadwal dan penyerahan") {
                DatePicker("Tanggal servis", selection: $schedule, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                Picker("Metode", selection: $delivery) {
                    Text("Datang langsung").tag("Datang langsung")
                    Text("Pickup kendaraan").tag("Pickup kendaraan")
                }
                if delivery == "Pickup kendaraan" {
                    TextField("Alamat penjemputan", text: $address, axis: .vertical)
                    PreviewNotice(text: "Biaya pickup pulang-pergi dan cakupan area akan muncul setelah layanan tersedia.")
                }
            }
            Section("Keluhan awal") {
                TextField("Ceritakan kondisi kendaraan", text: $complaint, axis: .vertical)
                    .lineLimit(3...6)
            }
            Section {
                Button("Lihat ringkasan") { showSummary = true }
                    .buttonStyle(.glassProminent)
            } footer: {
                Text("Formulir ini tidak mengirim permintaan booking.")
            }
        }
        .onAppear { if workshop.isEmpty { workshop = preselectedWorkshop } }
        .sheet(isPresented: $showSummary) {
            NavigationStack {
                Form {
                    Section("Ringkasan pratinjau") {
                        ValueRow(label: "Bengkel", value: workshop.isEmpty ? "Belum dipilih" : workshop)
                        ValueRow(label: "Kendaraan", value: vehicle.isEmpty ? "Belum dipilih" : vehicle)
                        ValueRow(label: "Layanan", value: service)
                        ValueRow(label: "Metode", value: delivery)
                    }
                    PreviewNotice(text: "Belum ada booking yang dibuat atau biaya yang dihitung.")
                }
                .navigationTitle("Ringkasan Booking")
                .toolbar { Button("Tutup") { showSummary = false } }
            }
            .presentationDetents([.medium, .large])
        }
        .navigationTitle("Booking Servis")
        .serviceRideScreen()
    }
}
