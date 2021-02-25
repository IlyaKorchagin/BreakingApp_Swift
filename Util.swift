//
//  Util.swift
//  testApplication
//
//  Created by Илья on 29/03/2020.
//  Copyright © 2020 Илья. All rights reserved.
//import Foundation

import UIKit

class Util: NSObject{
    
    class func getPath(_ fileName: String) -> String{
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileUrl = documentDirectory.appendingPathComponent(fileName)
        print("Database Path :- \(fileUrl.path)")
        return fileUrl.path
    }
    
    class func copyDatabase(_ filename: String, change_version: Bool){
        //let dbPath = getPath("films.db")
        let dbPath = getPath("pupilDb.db")
        let fileManager = FileManager.default
        
        
        if !fileManager.fileExists(atPath: dbPath) || change_version {
            let bundle = Bundle.main.resourceURL
            let file = bundle?.appendingPathComponent(filename)
            var error:NSError?
            do{
                try fileManager.copyItem(atPath: (file?.path)!, toPath: dbPath)
            }catch let error1 as NSError{
                error = error1
            }
            
            if error == nil{
                print("error in db")
            }else{
                print("Yeah !!")
            }
            
        }
    }
}
