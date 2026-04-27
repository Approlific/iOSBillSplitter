//
//  BillSplitView.swift
//  BillSplitter
//
//  Created by Jerry Toland on 4/27/26.
//

import SwiftUI

struct BillSplitView: View {
    
    @Binding var bill: Bill
    
    var body: some View {
        VStack {
            Text("Total Amount")
                .font(.title)
                .bold()
            TextField("Total Amount", value: $bill.totalAmount, format: .currency(code: "USD"))
                .font(.title2)
                .background(.white)
                .foregroundStyle(.mint)
            
            Text("Tip Percent")
                .font(.title)
                .bold()
            TextField("Tip Amount", value: $bill.tipPercent, format: .number)
                .font(.title2)
                .background(.white)
                .foregroundStyle(.mint)
            
            Text("Number of People")
                .font(.title)
                .bold()
            TextField("Number of People", value: $bill.numberOfPeople, format: .number)
                .font(.title2)
                .background(.white)
                .foregroundStyle(.mint)
            
            Divider()
            
            VStack {
                Text("Tip Amount")
                    .font(.title)
                    .bold()
                Text("\(bill.tipAmount, format: .currency(code: "USD"))")
                
                Text(" ")
                
                Text("Grand Total")
                    .font(.title)
                    .bold()
                
                Text("\(bill.grandTotal, format: .currency(code: "USD"))")
                
                Text(" ")
                
                Text("Amount Per Person")
                    .font(.title)
                    .bold()
                Text("\(bill.perPerson, format: .currency(code: "USD"))")
            }
            .font(.title2)
        }
        .padding()
        .background(.mint)
        .cornerRadius(20)
        .padding()
        .foregroundStyle(.white)
    }
}

#Preview {
    let sampleBill = Bill(totalAmount: 100.0, numberOfPeople: 3, tipPercent: 15.0)
    BillSplitView(bill: .constant(sampleBill))
}
