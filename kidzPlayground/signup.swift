import SwiftUI

struct SignupView: View {
    @State private var selectedCountry: Country = Country(id: 1, name: "United Arab Emirates", code: "+971", example: "50 123 4567")
    @State private var isPickerPresented: Bool = false
    
    
    let buttonColor = Color(red: 254 / 255, green: 202 / 255, blue: 64 / 255)
    
    @State private var mobileNumber : String = "";
    
    
    let countries = [
        Country(id: 1, name: "United Arab Emirates", code: "+971", example: "50 123 4567"),
        Country(id: 2, name: "Lebanon", code: "+961", example: "71 123 456"),
        // Add more countries as needed
    ]
    
    var body: some View {
        VStack (spacing: 40) {
            
            Text("Ready to Stay & Play?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Text("If you already have an account, we'll use that to log you in.")
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            
            HStack {
                Text(selectedCountry.code)
                    .padding(.leading)
                    .frame(alignment: .leading)
                    .foregroundColor(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedCorners(tl: 20, tr: 0, bl: 20, br: 0))

                TextField(selectedCountry.example, text: $mobileNumber)
                    .padding()
            }
            .background(Color(.systemGray6))
            .clipShape(RoundedCorners(tl: 20, tr: 20, bl: 20, br: 20))
            .onTapGesture { isPickerPresented = true }
            .fullScreenCover(isPresented: $isPickerPresented) {
                CountryPicker(selectedCountry: $selectedCountry, isPresented: $isPickerPresented, countries: countries)
            }


            
            Spacer()
            
            Button(action: { })
            {
                Text("Let's Go")
                    .foregroundColor(.black)
                    .padding()
                    .bold()
                    .frame(width: 350)
                    .background(buttonColor)
                    .cornerRadius(20)
            }
        }
        .padding()
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
