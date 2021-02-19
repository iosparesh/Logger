//
//  Logger.swift
//  FrameworkToPod
//
//  Created by Paresh Prajapati on 19/02/21.
//  Copyright © 2021 SolutionAnalysts. All rights reserved.
//

import Foundation

public class Logger {

    public static func log<T>(value: T?) {
        print(String(describing: value))
    }
    
}
