//
//  ContentView.swift
//  SImpleCoreDataText
//
//  Created by 羅壽之 on 2023/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAddView = false

    private var contacts: [String] = ["Test1", "Test2"]
    
    var body: some View {
        NavigationView {
            VStack {
               // add SearchBar here
                
                List {
                    ForEach(contacts, id:\.self) { contact in
                        HStack {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFit()
                                .clipShape(Circle())
                            
                            Text("contact.name")
                            Spacer()
                            Text("contact.phone")
                        }
                    } // ForEach
                    // add onDelete here
                    
                } // List
                .listStyle(PlainListStyle())
            } // VStack
            
            .navigationTitle("Contact List")
            
            // add toolbar
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // trigger to show a data adding sheet
                        
                    } label : {
                        Image(systemName: "plus")
                            .font(.headline)
                    }
                }
            }
            
            // add a sheet modifier here
            
            
        }  // navigationView
        
    }
    
    private func deleteContact(at offsets: IndexSet) {
        // make sure the offsets are not empty
        
        // call the delete data method in PersistenceController
        
    }
    
    private func predicate(_ contact: String) -> Bool {
        true
    }
    
}

struct AddContactView: View {
    
    // @Environment(\.managedObjectContext) var viewContext
    @Environment(\.presentationMode) var presentationMode
    
    @State var name: String = ""
    @State var phone: String = ""
    @State var photo: UIImage = UIImage(systemName: "person.circle")!
    @State var showPicker = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .onTapGesture {
                        // trigger to show the image picker sheet
                        
                    }
                                   
                TextField("Input name", text: $name)
                TextField("Input phone number", text: $phone)
                    .keyboardType(.phonePad)
                Spacer()
            }
            .padding()
            
            // add .sheet modifier here
            
            .navigationTitle("New Contact")
            
            // toobar
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // dismiss the sheet
                        
                    } label : {
                        Image(systemName: "xmark")
                            .font(.headline)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // add the new data to the core data and dismiss the sheet
                        
                    } label : {
                        Image(systemName: "checkmark")
                            .font(.headline)
                    }
                    // disable the add button if missing name and phone
                    
                }
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
