//
//  AppData.swift
//  GoodStuff
//
//  Created by iGuest on 10/29/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class AppData: NSObject {
    static let shared = AppData()
    
    open var titles: [String] = ["Seattle", "Chicago", "NYC"]
    open var descr: [String] = ["PNW", "Midwest", "Empire State of Mind"]
    open var topicIdx = 0
    
    open var seaQuestions: [String] = ["Which neighborhood is not in Seattle?"]
    open var chiQuestions: [String] = ["Which mascot is not in Chicago?"]
    
    open var seaAnswers: [String] = ["Ravenna", "Queen Anne", "Capitol Hill", "Wicker Park"]
    open var chiAnswers: [String] = ["Cubs", "Bears", "Tigers", "Blackhawks"]

}
