import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @StateObject var viewModel: EditProfileViewModel
    @State var isPresentedImagePicker = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Spacer()
                .frame(height: 7)
            Group {
                if let image = viewModel.image {
                    Image(uiImage: image)
                        .resizable()
                } else {
                    Color.gray
                }
            }
            .frame(width: 296, height: 296)
            .clipShape(Circle())
            .imagePicker(isShow: $isPresentedImagePicker, uiImage: $viewModel.image)
            .onTapGesture {
                isPresentedImagePicker.toggle()
            }
            Spacer()
                .frame(height: 20)
            HStack {
                Text("닉네임")
                    .font(.system(size: 20, weight: .bold))
                TextField(viewModel.name, text: $viewModel.name)
            }
            .padding(.leading, 20)
            HStack {
                Text("위치")
                    .font(.system(size: 20, weight: .bold))
                TextField(viewModel.profile.address, text: $viewModel.address)
            }
            .padding(.leading, 20)
            Spacer()
            Button {
                viewModel.setProfile()
                dismiss()
            } label: {
                Text("완료")
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(viewModel.name.isEmpty || viewModel.address.isEmpty ? Color("969696") : Color("FFC85C"))
                    .cornerRadius(48)
                    .foregroundColor(.white)
            }
            .disabled(viewModel.name.isEmpty || viewModel.address.isEmpty)
            .padding(.horizontal, 20)
            Spacer()
                .frame(height: 60)
        }
        .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .padding(.trailing, 18)
                                Text("프로필 수정")
                                    .font(.system(size: 22, weight: .medium))
                            }
                        }
                        .foregroundColor(.black)
                    }
                }
                .navigationBarBackButtonHidden(true)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(viewModel: .init(prevProfile: .init(imageUrlString: .init(), name: "", address: "")))
    }
}

public extension View {
    func imagePicker(isShow: Binding<Bool>, uiImage: Binding<UIImage?>) -> some View {
        self
            .sheet(isPresented: isShow) {
                ImagePicker(configuration: .init(photoLibrary: .shared()), requests: uiImage)
            }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    let configuration: PHPickerConfiguration
    @Binding var requests: UIImage?

    func makeUIViewController(context: Context) -> PHPickerViewController {
        let controller = PHPickerViewController(configuration: configuration)
        controller.delegate = context.coordinator
        return controller
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) { }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: PHPickerViewControllerDelegate {
        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            for result in results {
                let provider = result.itemProvider
                if provider.canLoadObject(ofClass: UIImage.self) {
                    provider.loadObject(ofClass: UIImage.self) { [weak self] image, _ in
                        if let image = image as? UIImage {
                            DispatchQueue.main.async {
                                self?.parent.requests = image
                            }
                        }
                    }
                }
            }
            picker.dismiss(animated: true)
        }
    }
}
