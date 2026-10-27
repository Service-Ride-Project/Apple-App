import SwiftUI

struct AddressListView: View {
    @State private var showForm = false
    @State private var label = ""
    @State private var address = ""

    var body: some View {
        ScrollView {
            EmptyStateView(symbol: "mappin", title: "Belum ada alamat", message: "Simpan alamat untuk pickup dan pengiriman marketplace.")
                .padding(16)
        }
        .navigationTitle("Alamat Saya")
        .toolbar { Button { showForm = true } label: { Image(systemName: "plus") } }
        .sheet(isPresented: $showForm) {
            NavigationStack {
                Form {
                    TextField("Label alamat", text: $label)
                    TextField("Alamat lengkap", text: $address, axis: .vertical)
                        .lineLimit(3...5)
                    PreviewNotice(text: "Alamat belum akan tersimpan pada pratinjau ini.")
                }
                .navigationTitle("Tambah Alamat")
                .toolbar { Button("Tutup") { showForm = false } }
            }
        }
        .serviceRideScreen()
    }
}
