//
//  ContentView.swift
//  DemoDatePicker
//
//  Created by Rishabh on 28/05/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pickerDate = Date()
    
    private var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        
        VStack {
            
            DatePicker("Date Picker", selection: $pickerDate, displayedComponents: .date)
            
            DatePicker("Time Picker", selection: $pickerDate, displayedComponents: .hourAndMinute)
            
            DatePicker("Date and Time Picker", selection: $pickerDate, displayedComponents: [.date, .hourAndMinute])
            
            DatePicker("Picker with minimum and maximum date", selection: $pickerDate, in: dateClosedRange, displayedComponents: [.date, .hourAndMinute])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
