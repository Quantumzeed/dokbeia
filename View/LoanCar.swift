//
//  LoanCar.swift
//  dokbeia
//
//  Created by Quantum on 20/10/2565 BE.
//

import SwiftUI


struct LoanCar: View {
    
    @State private var isShowSheet: Bool = false
    @State private var Month = 0.0
    @State private var Money = 0.0
    @State private var InterestPercent = 0.0
    @State private var Pay = 0.0
    

    
    var body: some View {
        
        VStack {
            HStack{
                    Image(systemName: "car")
                    Text("ดอกเบี้ยรถ")
                }
            .font(.title)
            ScrollView{
                Section {
                    TextField("ราคารถ", value: $Money, format: .currency(code: "THB"))
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                        .border(.secondary)
                        .padding(.horizontal)
                    TextField("ระยะเวลา", value: $Month, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.secondary)
                        .keyboardType(.decimalPad)
                        .padding(.horizontal)
                    TextField("ดอกเบี้ย", value: $InterestPercent, format: .percent)
                        .textFieldStyle(.roundedBorder)
                        .border(.secondary)
                        .keyboardType(.decimalPad)
                        .padding(.horizontal)
                        
                    }
                
                Section {
                    Button("Calculate") {
                        Pay = ((Money + ((Money*(InterestPercent/12))*Month))/Month)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Text("ผ่อนต่อเดือน : \(Pay)")
                }
            
            }
            
            
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.teal.opacity(0.3),Color.teal]), startPoint: .bottomLeading, endPoint: .topTrailing))
    }
}


struct LoanCar_Previews: PreviewProvider {
    static var previews: some View {
        LoanCar()
    }
}
