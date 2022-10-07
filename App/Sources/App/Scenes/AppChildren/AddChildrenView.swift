import SwiftUI

struct AddChildrenView: View {
    @StateObject var viewModel = AddChildrenViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
                .frame(height: 20)
            Group {
                TextField(
                    "이름을 입력해주세요",
                    text: $viewModel.name
                )
                .font(.system(size: 16))
                .padding(.horizontal, 13)
                .frame(height: 51)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(
                            viewModel.name.isEmpty ? Color("969696") : Color("FFC85C"),
                            lineWidth: 1
                        )
                )
                TextField(
                    "2022.10.06",
                    text: $viewModel.birthday
                )
                .font(.system(size: 16))
                .padding(.horizontal, 13)
                .frame(height: 51)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(
                            viewModel.birthday.isEmpty ? Color("969696") : Color("FFC85C"),
                            lineWidth: 1
                        )
                )
                TextField(
                    "성격을 입력하세요.",
                    text: $viewModel.personality
                )
                .font(.system(size: 16))
                .padding(.horizontal, 13)
                .frame(height: 51)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(
                            viewModel.personality.isEmpty ? Color("969696") : Color("FFC85C"),
                            lineWidth: 1
                        )
                )
            }
            Spacer()
                .frame(height: 15)
            Text("질환 체크")
                .font(.system(size: 11))
                .foregroundColor(Color("969696"))
            Color("969696")
                .frame(width: .infinity, height: 1)
            Spacer()
                .frame(height: 10)
            Group {
                AddChildrenButton(
                    isSelected: $viewModel.bool1,
                    name: "ADHD"
                )
                AddChildrenButton(
                    isSelected: $viewModel.bool2,
                    name: "알레르기"
                )
                AddChildrenButton(
                    isSelected: $viewModel.bool3,
                    name: "자폐"
                )
                AddChildrenButton(
                    isSelected: $viewModel.bool4,
                    name: "아토피"
                )
                AddChildrenButton(
                    isSelected: $viewModel.bool5,
                    name: "기타"
                )
            }
            if viewModel.bool5 {
                VStack(spacing: 0) {
                    TextField(
                        "추가 질환을 작성해주세요.",
                        text: $viewModel.guitar
                    )
                    .font(.system(size: 11))
                    .padding(.bottom, 1)
                    Color(viewModel.guitar.isEmpty ? "969696" : "FFC85C")
                        .frame(width: .infinity, height: 1)
                }
                .padding(.leading, 28)
            }
            Spacer()
            Group {
                Button {
                    viewModel.setChildren()
                    dismiss()
                } label: {
                    Text("완료")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(viewModel.name.isEmpty || viewModel.birthday.isEmpty || viewModel.personality.isEmpty ? Color("969696") : Color("FFC85C"))
                        .cornerRadius(48)
                }
                .disabled(viewModel.name.isEmpty || viewModel.birthday.isEmpty || viewModel.personality.isEmpty)
                Spacer()
                    .frame(height: 50)
            }

        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                    Text("자녀정보")
                        .font(.system(size: 22, weight: .medium))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 20)
    }
}

struct AddChildrenView_Previews: PreviewProvider {
    static var previews: some View {
        AddChildrenView()
    }
}
