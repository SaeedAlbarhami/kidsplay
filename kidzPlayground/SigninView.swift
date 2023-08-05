import SwiftUI

struct SigninView: View {
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
                .foregroundColor(.black)
            
            TextField("Mobile number", text: $phoneNumber)
                .keyboardType(.numberPad)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(30.0)
                .padding(.bottom, 20)
                .foregroundColor(.black)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(30.0)
                .padding(.bottom, 20)
                .foregroundColor(.black)
                .overlay(
                    HStack {
                        Spacer()
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing)
                    }
                )
            Button(action: {
                // Handle login
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 60)
                    .background(Color(red: 254/255, green: 202/255, blue: 64/255))
                    .cornerRadius(30.0)
            }
            
            Button(action: {
                // Handle forgot password
            }) {
                Text("Forgot password?")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
                    .frame(width: 300, height: 60)
                    .background(Color(red: 247/255, green: 248/255, blue: 250/255))
                    .cornerRadius(30.0)
            }
            Button(action: {
                // Handle login with different mobile
            }) {
                HStack {
                    Text("It's not you?")
                        .font(.caption)
                        .padding(.top, 20)
                        .foregroundColor(.black)
                    
                    Text("Login with a different mobile")
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                        .foregroundColor(.black)
                }
            }
        }
        .padding()
    }
}

struct Signin_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}

