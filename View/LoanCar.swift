//
//  LoanCar.swift
//  dokbeia
//
//  Created by Quantum on 20/10/2565 BE.
//

import SwiftUI


struct LoanCar: View {
    
    @State private var testText:String = ""
    @State private var Money:Double = 0
    @State private var ShowMoreMoney:Bool = false
    
    @State private var InterestPercent = 0.0
    @State private var ShowMoreInterestPercent:Bool = false
    
    @State private var Month = 0.0
    @State private var ShowMoreMonth:Bool = false
    
    @State private var Pay = 0.0
    @State private var ShowMorePay:Bool = false
    
    @State private var isShowSheet: Bool = false
    
   
    
    
    

    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    TextField("ราคารถ", value: $Money, format: .currency(code: "THB"))
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color.accentColor.opacity(0.2).cornerRadius(20))
                        .foregroundColor(.accentColor)
                    
//                        .font(.title2)
                        .keyboardType(.decimalPad)
                        .animation(.spring(), value: Money)
                    
                      
                    HStack {
                        Slider(value: $Money, in: 0...1000000,step: 10000)
                            .animation(.spring(), value: Money)
                        CircleButton(iconName: "chevron.right")
                            .rotationEffect(Angle(degrees: ShowMoreMoney ? 90 : 270 ))
                            .onTapGesture {
                                withAnimation(.interactiveSpring()){
                                    ShowMoreMoney.toggle()
                                }
                            }
                    }
                    if ShowMoreMoney {
                        Text("ShowMoreMoney")
                        Text("ShowMoreMoney")
                        Text("ShowMoreMoney")
                        Text("ShowMoreMoney")
                    }
                }
               
                
                VStack {
                    HStack{
                        TextField("ดอกเบี้ย", value: $InterestPercent, format: .percent)
                            .padding(.horizontal)
                            .padding(.vertical,8)
                            .background(Color.accentColor.opacity(0.2).cornerRadius(20))
                            .foregroundColor(.accentColor)
//                            .font(.title2)
                            .keyboardType(.decimalPad)
                            .animation(.spring(), value: InterestPercent)
                        Slider(value: $InterestPercent, in: 0.0...0.3,step: 0.01)
                            .animation(.spring(), value: InterestPercent)
                        CircleButton(iconName: "chevron.right")
                            .rotationEffect(Angle(degrees: ShowMoreInterestPercent ? 90 : 270 ))
                            .onTapGesture {
                                withAnimation(.interactiveSpring()){
                                    ShowMoreInterestPercent.toggle()
                                }
                            }
                    }
                    if ShowMoreInterestPercent {
                        Text("ShowMoreInterestPercent")
                        Text("ShowMoreInterestPercent")
                        Text("ShowMoreInterestPercent")
                        Text("ShowMoreInterestPercent")
                    }
                }

                
                VStack {
                    HStack{
                        TextField("ระยะเวลา", value: $Month, format: .number)
                            .padding(.horizontal)
                            .padding(.vertical,8)
                            .background(Color.accentColor.opacity(0.2).cornerRadius(20))
                            .foregroundColor(.accentColor)
//                            .font(.title2)
                            .keyboardType(.decimalPad)
                            .animation(.spring(), value: Month)
                        Slider(value: $Month, in: 0...84,step: 6)
                            .animation(.spring(), value: Month)
                        CircleButton(iconName: "chevron.right")
                            .rotationEffect(Angle(degrees: ShowMoreMonth ? 90 : 270 ))
                            .onTapGesture {
                                withAnimation(.interactiveSpring()){
                                    ShowMoreMonth.toggle()
                                }
                            }
                    }
                    if ShowMoreMonth {
                        Text("ShowMoreMonth")
                        Text("ShowMoreMonth")
                        Text("ShowMoreMonth")
                        Text("ShowMoreMonth")
                    }
                    
                }
                VStack{
                    TextField("ต่อเดือน", value: $Pay, format: .currency(code: "THB"))
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color.accentColor.opacity(0.2).cornerRadius(20))
                        .foregroundColor(.accentColor)
//                        .font(.title2)
                        .keyboardType(.decimalPad)
                        .animation(.spring(), value: Pay)
                    
                    
                    
                    HStack {
                        Slider(value: $Pay, in: 0...100000,step: 1000)
                            .animation(.spring(), value: Pay)
                        CircleButton(iconName: "chevron.right")
                            .rotationEffect(Angle(degrees: ShowMorePay ? 90 : 270 ))
                            .onTapGesture {
                                withAnimation(.interactiveSpring()){
                                    ShowMorePay.toggle()
                                }
                            }
                    }
                    if ShowMorePay {
                        Text("ShowMorePay")
                        Text("ShowMorePay")
                        Text("ShowMorePay")
                        Text("ShowMorePay")
                    }
                }
                Spacer()
    
                }
            .padding(.horizontal)
//            .shadow(color: .gray, radius: 10, x: 0, y:0)
            .navigationTitle("คำนวนดอกเบี้ย")
            .navigationBarTitleDisplayMode(.inline)
            .font(.title2)
//            .background(LinearGradient(gradient: Gradient(colors: [Color.teal.opacity(0.3),Color.teal]), startPoint: .bottomLeading, endPoint: .topTrailing))
            .onChange(of: Month) { newValue in
                calPayPerMonth()
            }
            .onChange(of: InterestPercent) { newValue in
                calPayPerMonth()
            }
            .onChange(of: Money) { newValue in
                calPayPerMonth()
            }
        }
        
            
    }
    
    func calPayPerMonth() {
        Pay = ((Money + ((Money*(InterestPercent/12))*Month))/Month)
    }
}


struct LoanCar_Previews: PreviewProvider {
    static var previews: some View {
        LoanCar()
    }
}
