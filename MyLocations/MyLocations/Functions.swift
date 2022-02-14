//
//  Functions.swift
//  MyLocations
//
//  Created by Samantha Smith on 2/8/22.
//

import Foundation

let applicationDocumentsDirectory: URL = {
    let paths = FileManager.default.urls(
        for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}()

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}

let dataSaveFailedNotification = Notification.Name(rawValue: "DataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal Error: \(error)")
    NotificationCenter.default.post(name: dataSaveFailedNotification, object: nil)
}
