//
//  TwitterClient.swift
//  TwitterOAuth
//
//  Created by Kumar, Chandaraprakash on 9/27/14.
//  Copyright (c) 2014 chantech. All rights reserved.
//

import UIKit

let twitterConsumerKey = "du4mZl9ZtHHkn0U10RhjXsntJ"
let twitterConsumerSecret = "8lAezmC1xIVk6qfN5HQ9ESerJsdqUUjqCksb9uFVsdJUrxf3WA"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey,   consumerSecret: twitterConsumerSecret)
        }
        return Static.instance
    }
}
