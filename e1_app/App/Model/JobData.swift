//
//  JobData.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import Foundation

struct Address: Codable {
    let town: String
    let street: String
    let house: String
}

struct Experience: Codable {
    let previewText: String
    let text: String
}

struct Salary: Codable {
    let full: String
    let short: String
}

struct Vacancies: Codable, Identifiable {
    let id: String
    let lookingNumber: Int?
    let title: String
    let address: Address
    let company: String
    let experience: Experience
    let publishedDate: String
    let isFavorite: Bool
    let salary: Salary
    let schedules: [String]
    let appliedNumber: Int?
    let description: String
    let responsibilities: String
    let questions: [String]
}

struct Buttons: Codable {
    let text: String
}

struct Offers: Codable, Identifiable {
    let id: String
    let title: String
    let buttons: Buttons?
    let link: String
}

struct JobData: Codable {
    let offers: [Offers]
    let vacancies: [Vacancies]
}


