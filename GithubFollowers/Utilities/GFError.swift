//
//  GFError.swift
//  GithubFollowers
//
//  Created by Jacob  Loranger on 6/4/24.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created an invalid request. Please try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data recieved from the server was invalid. Please try again"
    case unableToFavorite = "There was an error favoriting the user, please try again"
    case alreadyInFavorites = "User already saved"
    
}
