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
        let defaultValue = UserDefaults.standard.value(forKey: "environment") as? String ?? ""
        switch Enviroment(string: defaultValue) {
        case .Dev, .Stage, .Temp:
            print(String(describing: value))
        default:
            break
        }
    }
    
    public init(environment: Enviroment) {
        UserDefaults.standard.set(environment.string, forKey: "environment")
        UserDefaults.standard.synchronize()
    }
    
}

public enum Enviroment: String {
    case Production
    case Dev
    case Stage
    case Temp
    
    var string: String {
        switch self {
        case .Dev:
            return "Dev"
        case .Production:
            return "Production"
        case .Stage:
            return "Stage"
        case .Temp:
            return "Temp"
        }
    }
    init(string: String) {
        self = Enviroment(rawValue: string) ?? .Dev
    }
}
