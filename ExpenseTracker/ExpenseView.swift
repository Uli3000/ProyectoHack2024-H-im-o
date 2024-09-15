//
//  ExpenseView.swift
//  ExpenseTracker
//
//  Created by Ivan Jhair Gomez Rincon on 15/09/24.
//

import SwiftUI

struct ExpenseView: View {
    let listItems = ["Hamburguesa", "Gasolina", "Antojos", "Tecnologia", "Emergencia"]
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Buenos dias!")
                        .font(.body)
                        .foregroundStyle(.blue)
                    
                    Text("Ivan Rincon")
                        .font(.title)
                }
                Spacer()
                Image(systemName: "bell.circle")
                    .font(.largeTitle)
                    .fontWeight(.light)
            }
            .padding(30)
            
            VStack {
                HStack{
                    VStack(alignment: .leading) {
                        Text("$ 990.00")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                        Text("Total en la cuenta")
                            .font(.body)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(10)
                    Spacer()
                    
                    VStack{
                        Text("...")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    
                }
                .padding(10)
                VStack{
                    Rectangle()
                        .fill(LinearGradient(colors: [.yellow, .red], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 340, height: 10)
                        .cornerRadius(10)
                    
                    HStack{
                        Spacer()
                        Text("$3100")
                            .foregroundColor(.gray)
                            .font(.body)
                    }
                    .padding(.horizontal, 20)
                }
                .padding(0)
                HStack(spacing: 10){
                    HStack(spacing: 0){
                        Image(systemName: "star")
                            .foregroundColor(.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                    }
                    
                    HStack(spacing: 0){
                        Image(systemName: "star")
                            .foregroundColor(.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "circle.fill")
                            .foregroundColor(.yellow)
                            .offset(x:18)
                        Image(systemName: "circle.fill")
                            .foregroundColor(.red)
                            .blendMode(.hardLight)
                    }
                }
                .padding(20)
            }
            .frame(width: 370, height: 220)
            .background(Color.black)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 0, x: 3, y:3)
            
            List{
                HStack {
                    Text("Gastos")
                        .foregroundColor(.black)
                        .font(.title)
                    Spacer()
                    Button{
                        // No hace nada
                    } label: {
                        Image(systemName: "plus.circle")
                            .fontWeight(.light)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                }
                ForEach(listItems, id:\.self){item in
                    HStack{
                        Image(systemName: "cup.and.saucer.fill")
                            .background(
                            Rectangle()
                                .fill(.white)
                                .frame(width: 60, height: 60)
                                .cornerRadius(20)
                        )
                            .font(.title)
                            .padding(15)
                        
                        VStack(alignment: .leading){
                            Text(item)
                                .font(.title2)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Text("$13")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    ExpenseView()
}
