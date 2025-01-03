//
//  GFError.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/3.
//

import Foundation

enum GFError: String, Error {
    case invalideUsername = "This username created an invalid request. Please Try again!"
    case unableToCompleteRequest = "Unable to complete request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "The data received from the server was invalid. Please try again!"
}
