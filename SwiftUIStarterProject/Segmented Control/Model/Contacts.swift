//
//  Contacts.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 22/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import Foundation

/// Contacts Model
struct Contacts: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let email: String
    let phoneNumber: String

    static func getContactGetails() -> [Contacts] {
        return [Contacts(name: "Harry", email: "harry@gmail.com", phoneNumber: "1122334455"),
                Contacts(name: "Ron", email: "ron@gmail.com", phoneNumber: "55448767365"),
                Contacts(name: "Hermoine", email: "hermoine@gmail.com", phoneNumber: "8726356763"),
                Contacts(name: "Nevil", email: "nevil@gmail.com", phoneNumber: "87356352689"),
                Contacts(name: "Ginny", email: "ginny@gmail.com", phoneNumber: "3973537365"),
                Contacts(name: "Luna", email: "luna@gmail.com", phoneNumber: "293738936396"),
                Contacts(name: "James", email: "james@gmail.com", phoneNumber: "2343563435"),
                Contacts(name: "Sirius", email: "sirius@gmail.com", phoneNumber: "3451234567"),
                Contacts(name: "Fred", email: "fred@gmail.com", phoneNumber: "6745645234"),
                Contacts(name: "George", email: "george@gmail.com", phoneNumber: "5674567654")]
    }
}

enum ContactSegments: Hashable, Identifiable {
    case name, email

    var id: UUID {
        return UUID()
    }
}
