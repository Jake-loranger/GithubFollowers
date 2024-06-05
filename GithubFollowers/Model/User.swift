//
//  User.swift
//  GithubFollowers
//
//  Created by Jacob  Loranger on 6/4/24.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarURL: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
