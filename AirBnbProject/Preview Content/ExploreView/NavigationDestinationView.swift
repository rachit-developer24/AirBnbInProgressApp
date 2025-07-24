//
//  NavigationDestinationView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 22/07/2025.
//

import SwiftUI
enum selectedoption{
    case location
    case dates
    case guests
}

struct NavigationDestinationView: View {
    @State var num:Int = 0
    @State var startdate: Date = Date()
    @State var enddate: Date = Date()
    @State var selected: selectedoption = .location
    @State var text: String = ""
    @Binding var show: Bool
    var body: some View {
        NavigationStack{
            VStack{
                if selected == .location{ VStack(alignment:.leading){
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.bold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .fontWeight(.bold)
                        TextField("show destination", text: $text)
                    }
                    .padding()
                    .frame(height: 44)
                    .overlay{
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.gray)
                        
                    }
                }}else {
                    DestinationSubView(title: "Where", subtitle: "Add Destination")
                }
               
            }
            .modifier(ColapseViewModifier())
            .frame(height:selected == .location ? 130 : 64)
            .onTapGesture {
                withAnimation(.snappy){ selected = .location}
            }
            VStack(alignment:.leading){
                if selected == .dates{
                        Text("When's your trip")
                            .fontWeight(.bold)
                    VStack{
                        DatePicker("from", selection:$startdate, displayedComponents: .date)
                        Divider()
                        DatePicker("to", selection: $enddate, displayedComponents: .date)
                            
                    }
                }else{
                    DestinationSubView(title: "When", subtitle: "Add Dates")
                }
            }
            .modifier(ColapseViewModifier())
            .frame(height: selected  == .dates ? 140 : 64)
            .onTapGesture {
                withAnimation(.snappy){
                    selected =  .dates
                }
                }
            
            VStack{
                if selected == .guests{
                    VStack{
                        Text("Who's traveling?")
                            .fontWeight(.bold)
                    }
                    VStack{
                        Stepper{
                            Text("\(num) Adults")
                        }onIncrement: {
                            num = num + 1
                        }onDecrement: {
                            guard num > 0 else { return }
                            num = num - 1}
                    }
                }else{
                    DestinationSubView(title: "Who", subtitle: "Add Guests")
                }
            }
            .modifier(ColapseViewModifier())
            .frame(height: selected == .guests ? 130 : 64)
            .onTapGesture {
                withAnimation(.snappy){  selected = .guests}
            }

            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        withAnimation(.snappy){
                            show.toggle()
                        }
                    } label: {
                        Image(systemName: "xmark.circle")
                            .foregroundStyle(.black)
                            .imageScale(.large)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        text = ""
                    } label: {
                        Text("Clear")
                            .fontWeight(.bold)
                    }
                    .disabled(text.isEmpty)
    
                }
            }
            Spacer() 
        }
    }
}

#Preview {
    NavigationDestinationView(show: .constant(false))
}
