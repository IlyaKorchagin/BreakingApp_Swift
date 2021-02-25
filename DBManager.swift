//
//  DBManager.swift
//  FMDBTut
//
//  Created by Gabriel Theodoropoulos on 07/10/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class DBManager: NSObject {
    
    // Версия базы данных
    let databaseVersion = 8
    
    // поля базы данных
    let field_Id = "ID"
    let field_Name = "NAME"
    let field_Rating = "RATING"
    let field_Frezze_Rating = "FREZZE_RATING"
    let field_Powermove_Rating = "POWERMOVE_RATING"
    let field_OFP_Rating = "OFP_RATING"
    let field_Stretching_Rating = "STRETCHING_RATING"
    let field_Current_Position = "CURRENT_POSITION"
    let field_New_Position = "NEW_POSITION"

    //----- FREZZE ----->
    
    let field_Baby_Frezze = "BABY_FREZZE"
    let field_Baby_Frezze_Dinamic = "BABY_FREZZE_DINAMIC"
    let field_Chair_Frezze = "CHAIR_FREZZE"
    let field_Chair_Frezze_Dinamic = "CHAIR_FREZZE_DINAMIC"
    let field_Elbow_Frezze = "ELBOW_FREZZE"
    let field_Elbow_Frezze_Dinamic = "ELBOW_FREZZE_DINAMIC"
    let field_Head_Frezze = "HEAD_FREZZE"
    let field_Head_Frezze_Dinamic = "HEAD_FREZZE_DINAMIC"
    let field_HeadHollowback_Frezze = "HEAD_HOLLOWBACK_FREZZE"
    let field_HeadHollowback_Frezze_Dinamic = "HEAD_HOLLOWBACK_FREZZE_DINAMIC"
    let field_Hollowback_Frezze = "HOLLOWBACK_FREZZE"
    let field_Hollowback_Frezze_Dinamic = "HOLLOWBACK_FREZZE_DINAMIC"
    let field_Invert_Frezze = "INVERT_FREZZE"
    let field_Invert_Frezze_Dinamic = "INVERT_FREZZE_DINAMIC"
    let field_Onehand_Frezze = "ONE_HAND_FREZZE"
    let field_Onehand_Frezze_Dinamic = "ONE_HAND_FREZZE_DINAMIC"
    let field_Shoulder_Frezze = "SHOULDER_FREZZE"
    let field_Shoulder_Frezze_Dinamic = "SHOULDER_FREZZE_DINAMIC"
    let field_Turtle_Frezze = "TURTLE_FREZZE"
    let field_Turtle_Frezze_Dinamic = "TURTLE_FREZZE_DINAMIC"
    
     //<----- FREZZE -----
    
    //----- POWER MOVE ----->
    
    let field_Airflare = "AIRFLARE"
    let field_Airflare_Dinamic = "AIRFLARE_DINAMIC"
    let field_Backspin = "BACKSPIN"
    let field_Backspin_Dinamic = "BACKSPIN_DINAMIC"
    let field_Cricket = "CRICKET"
    let field_Cricket_Dinamic = "CRICKET_DINAMIC"
    let field_Elbowairflare = "ELBOWAIRFLARE"
    let field_Elbowairflare_Dinamic = "ELBOWAIRFLARE_DINAMIC"
    let field_Flare = "FLARE"
    let field_Flare_Dinamic = "FLARE_DINAMIC"
    let field_Jackhammer = "JACKHAMMER"
    let field_Jackhammer_Dinamic = "JACKHAMMER_DINAMIC"
    let field_Halo = "HALO"
    let field_Halo_Dinamic = "HALO_DINAMIC"
    let field_Headspin = "HEADSPIN"
    let field_Headspin_Dinamic = "HEADSPIN_DINAMIC"
    let field_Munchmill = "MUNCHMILL"
    let field_Munchmill_Dinamic = "MUNCHMILL_DINAMIC"
    let field_Ninety_nine = "NINETY_NINE"
    let field_Ninety_nine_Dinamic = "NINETY_NINE_DINAMIC"
    let field_Swipes = "SWIPES"
    let field_Swipes_Dinamic = "SWIPES_DINAMIC"
    let field_Turtle = "TURTLE"
    let field_Turtle_Dinamic = "TURTLE_DINAMIC"
    let field_Ufo = "UFO"
    let field_Ufo_Dinamic = "UFO_DINAMIC"
    let field_Web = "WEB"
    let field_Web_Dinamic = "WEB_DINAMIC"
    let field_Windmill = "WINDMILL"
    let field_Windmill_Dinamic = "WINDMILL_DINAMIC"
    let field_Wolf = "WOLF"
    let field_Wolf_Dinamic = "WOLF_DINAMIC"
    
    //<----- POWER MOVE -----
    
    //----- OFP ------>
    
    let field_Handstand = "HANDSTAND"
    let field_Handstand_Dinamic = "HANDSTAND_DINAMIC"
    let field_Angle = "ANGLE"
    let field_Angle_Dinamic = "ANGLE_DINAMIC"
    let field_Horizont = "HORIZONT"
    let field_Horizont_Dinamic = "HORIZONT_DINAMIC"
    let field_Finger = "FINGER"
    let field_Finger_Dinamic = "FINGER_DINAMIC"
    let field_Pushups = "PUSHUPS"
    let field_Pushups_Dinamic = "PUSHUPS_DINAMIC"
    let field_Bridge = "BRIDGE"
    let field_Bridge_Dinamic = "BRIDGE_DINAMIC"
    
    //<----- OFP ------
   
    //----- STRETCHING ----->
    
    let field_Twine = "TWINE"
    let field_Twine_Dinamic = "TWINE_DINAMIC"
    let field_Fold = "FOLD"
    let field_Fold_Dinamic = "FOLD_DINAMIC"
    let field_Shoulders = "SHOULDERS"
    let field_Shoulders_Dinamic = "SHOULDERS_DINAMIC"
    let field_Butterfly = "BUTTERFLY"
    let field_Butterfly_Dinamic = "BUTTERFLY_DINAMIC"
    
    //<----- STRETCHING -----
    

    //----- COMBO ----->
    
    let field_Baby_Turtle = "BABY_TURTLE"
    let field_Baby_Shoulder = "BABY_SHOULDER"
    let field_Turtle_Baby_Shoulder = "TURTLE_BABY_SHOULDER"
    let field_Turtle_Baby_Head = "TURTLE_BABY_HEAD"
    
    let field_Baby_Head_Elbow = "BABY_HEAD_ELBOW"
    let field_Turtle_Baby_Elbow = "TURTLE_BABY_ELBOW"
    let field_Turtle_Baby_Chair = "TURTLE_BABY_CHAIR"
    let field_Baby_Head_Headhollowback = "BABY_HEAD_HEADHOLLOWBACK"
    
    let field_Elbow_Hand_Onehand = "ELBOW_HAND_ONEHAND"
    let field_Turtle_Hand = "TURTLE_HAND"
    let field_Bridge_Invert = "BRIDGE_HAND_INVERT"
    
    let field_Chair_Onehand = "CHAIR_ONEHAND"
    let field_Bridge_Hand_Invert = "BRIDGE_HAND_INVERT"
    let field_Bridge_Hand_Hollowback = "BRIDGE_HAND_HOLLOWBACK"
    
    let field_Windmill_Turtle = "WINDMILL_TURTLE"
    let field_Windmill_Swipes = "WINDMILL_SWIPES"
    let field_Swipes_Turtle = "SWIPES_TURTLE"
    let field_Windmill_Head = "WINDMILL_HEAD"
    
    let field_Flare_Windmill = "FLARE_WINDMILL"
    let field_Flare_Swipes = "FLARE_SWIPES"
    let field_Windmill_Munchmill = "WINDMILL_MUNCHMILL"
    let field_Windmill_Web = "WINDMILL_WEB"
    
    let field_Windmill_Halo = "WINDMILL_HALO"
    let field_Swipes_Hand = "SWIPES_HAND"
    let field_Flare_Turtle = "FLARE_TURTLE"
    let field_Swipes_Ninety = "SWIPES_NINETY"
    
    let field_Flare_Hand = "FLARE_HAND"
    let field_Flare_Ninety = "FLARE_NINETY"
    let field_Flare_Wolf = "FLARE_WOLF"
    let field_Flare_Halo = "FLARE_HALO"
    
    let field_Flare_AirFlare = "FLARE_AIRFLARE"
    let field_Airflare_Elbowairflare = "AIRFLARE_ELBOWAIRFLARE"
    let field_Flare_Ufo = "FLARE_UFO"
    let field_Windmill_Airflare = "WINDMILL_AIRFLARE"
    
    //<----- COMBO -----
    
    //----- BATTLE ----->
    
    let field_Battle_Rating = "BATTLE_RATING"
    let field_Battle_Cur_Position = "BATTLE_CUR_POSITION"
    let field_Battle_New_Position = "BATTLE_NEW_POSITION"
    
    //<----- BATLLE -----

    
    
    static let shared: DBManager = DBManager()
    
    let databaseFileName = "pupilDb.db"
    
    var pathToDatabase: String!
    
    var database: FMDatabase!
    
    
    override init() {
        super.init()
        
        // получаем путь к базе данных
        pathToDatabase = Util.getPath("pupilDb.db")
        
        // проверяем версию базы данных, если она устарела, то обновляем ее
        if openDatabase() {
        let currentVersion = Int(database.userVersion())
            if databaseVersion > currentVersion {
                database.setUserVersion(UInt32(databaseVersion))
                Util.copyDatabase("pupilDb.db", change_version: true)
            }
        }
}
 
    
    /*var shareInstance = DatabaseManager()
    class DatabaseManager: NSObject{
        
        var database:FMDatabase? = nil
        
        
        class func getInstance() -> DatabaseManager{
            if shareInstance.database == nil{
                shareInstance.database = FMDatabase(path: Util.getPath("PupilsGF.db"))
            }
            return shareInstance
        }
 */
    func createDatabase() -> Bool {
        var created = false
        
        if !FileManager.default.fileExists(atPath: pathToDatabase) {
            database = FMDatabase(path: pathToDatabase!)
            
            if database != nil {
                // Open the database.
                if database.open() {
            
                    let createPupilTableQuery = "create table pupils (\(field_Id) integer primary key autoincrement not null, \(field_Name) text not null, \(field_Rating) double not null, \(field_Frezze_Rating) double not null, \(field_Powermove_Rating) double not null, \(field_OFP_Rating) double not null, \(field_Stretching_Rating) double not null, \(field_Current_Position) integer not null, \(field_New_Position) integer not null)"
                    do {
    
                        try database.executeUpdate(createPupilTableQuery, values: nil)
                        
                        created = true
                    }
                    catch {
                        print("Could not create table.")
                        print(error.localizedDescription)
                    }
                    
                    database.close()
                }
                else {
                    print("Could not open the database.")
                }
            }
        }
        
        return created
    }
    
    // Функция проверки существования бд
    func openDatabase() -> Bool {
        // создание бд, в случае если файл бд отсутствует по указанному пути
        if database == nil {
            if FileManager.default.fileExists(atPath: pathToDatabase) {
                database = FMDatabase(path: pathToDatabase)
            }
        }
        // открытие бд, в случае если файл бд существует
        if database != nil {
            if database.open() {
                return true
            }
        }
        
        return false
    }
   
    // загружаем массив учеников из базы данных и сортируем его по рейтингу
    func loadPupils(sortField: String) -> [Pupil]!
        {
            var pupils: [Pupil]!
        
            if openDatabase() {
            let query = "select * from GF_Pupils order by \(sortField) desc"
            
            do {
                print(database)
                let results = try database.executeQuery(query, values: nil)
                
                while results.next() {
                    let pupil = Pupil()
                    copyPupil(pupil: pupil, results: results)
                    
                    if pupils == nil {
                        pupils = [Pupil]()
                    }
                    // добавляем нового ученика в массив учеников
                    pupils.append(pupil)
                }
            }
            catch {
                print(error.localizedDescription)
            }
            
            database.close()
        }
        
        return pupils
    }
    
    func loadPupil(withID ID: Int, completionHandler: (_ pupil: Pupil?) -> Void) {
        
        var pupil: Pupil!
        
        if openDatabase() {
            let query = "select * from GF_Pupils where \(field_Name)=?"
            
            do {
                let results = try database.executeQuery(query, values: [ID])
                
                if results.next() {
                    let pupil = Pupil()
                    
                    copyPupil(pupil: pupil, results: results)
                }
                else {
                    print(database.lastError())
                }
            }
            catch {
                print(error.localizedDescription)
            }
            
            database.close()
        }
        
        completionHandler(pupil)
    }
    
    // Функция формирования класса ученика из данных,
    // полученных по результатам запроса в базу данных
    
    func copyPupil(pupil: Pupil, results: FMResultSet) {
    
        pupil.name = results.string(forColumn: field_Name)
        pupil.rating = results.double(forColumn: field_Rating)
        pupil.frezze_rating = results.double(forColumn: field_Frezze_Rating)
        pupil.powermove_rating = results.double(forColumn: field_Powermove_Rating)
        pupil.ofp_rating = results.double(forColumn: field_OFP_Rating)
        pupil.stretching_rating = results.double(forColumn: field_Stretching_Rating)
        pupil.current_position = Int(results.int(forColumn: field_Current_Position))
        pupil.new_position = Int(results.int(forColumn: field_New_Position))
        
        // FREZZES
        
        pupil.babyfrezze = Int(results.int(forColumn: field_Baby_Frezze))
        pupil.babyfrezze_dinamic = Int(results.int(forColumn: field_Baby_Frezze_Dinamic))
        pupil.chairfrezze = Int(results.int(forColumn: field_Chair_Frezze))
        pupil.chairfrezze_dinamic = Int(results.int(forColumn: field_Chair_Frezze_Dinamic))
        pupil.elbowfrezze = Int(results.int(forColumn: field_Elbow_Frezze))
        pupil.elbowfrezze_dinamic = Int(results.int(forColumn: field_Elbow_Frezze_Dinamic))
        pupil.headfrezze = Int(results.int(forColumn: field_Head_Frezze))
        pupil.headfrezze_dinamic = Int(results.int(forColumn: field_Head_Frezze_Dinamic))
        pupil.headhollowbackfrezze = Int(results.int(forColumn: field_HeadHollowback_Frezze))
        pupil.headhollowbackfrezze_dinamic = Int(results.int(forColumn: field_HeadHollowback_Frezze_Dinamic))
        pupil.hollowbackfrezze = Int(results.int(forColumn: field_Hollowback_Frezze))
        pupil.hollowbackfrezze_dinamic = Int(results.int(forColumn: field_Hollowback_Frezze_Dinamic))
        pupil.invertfrezze = Int(results.int(forColumn: field_Invert_Frezze))
        pupil.invertfrezze_dinamic = Int(results.int(forColumn: field_Invert_Frezze_Dinamic))
        pupil.onehandfrezze = Int(results.int(forColumn: field_Onehand_Frezze))
        pupil.onehandfrezze_dinamic = Int(results.int(forColumn: field_Onehand_Frezze_Dinamic))
        pupil.shoulderfrezze = Int(results.int(forColumn: field_Shoulder_Frezze))
        pupil.shoulderfrezze_dinamic = Int(results.int(forColumn: field_Shoulder_Frezze_Dinamic))
        pupil.turtlefrezze = Int(results.int(forColumn: field_Turtle_Frezze))
        pupil.turtlefrezze_dinamic  = Int(results.int(forColumn: field_Turtle_Frezze_Dinamic))
        
        // POWERMOVE
        
        pupil.airflare = Int(results.int(forColumn: field_Airflare))
        pupil.airflare_dinamic = Int(results.int(forColumn: field_Airflare_Dinamic))
        pupil.backspin = Int(results.int(forColumn: field_Backspin))
        pupil.backspin_dinamic = Int(results.int(forColumn: field_Backspin_Dinamic))
        pupil.cricket = Int(results.int(forColumn: field_Cricket))
        pupil.cricket_dinamic = Int(results.int(forColumn: field_Cricket_Dinamic))
        pupil.elbowfrezze = Int(results.int(forColumn: field_Elbow_Frezze))
        pupil.elbowfrezze_dinamic = Int(results.int(forColumn: field_Elbow_Frezze_Dinamic))
        pupil.flare = Int(results.int(forColumn: field_Flare))
        pupil.flare_dinamic = Int(results.int(forColumn: field_Flare_Dinamic))
        pupil.jackhammer = Int(results.int(forColumn: field_Jackhammer))
        pupil.jackhammer_dinamic = Int(results.int(forColumn: field_Jackhammer_Dinamic))
        pupil.halo = Int(results.int(forColumn: field_Halo))
        pupil.halo_dinamic = Int(results.int(forColumn: field_Halo_Dinamic))
        pupil.headspin = Int(results.int(forColumn: field_Headspin))
        pupil.headspin_dinamic = Int(results.int(forColumn: field_Headspin_Dinamic))
        pupil.munchmill = Int(results.int(forColumn: field_Munchmill))
        pupil.munchmill_dinamic = Int(results.int(forColumn: field_Munchmill_Dinamic))
        pupil.ninety_nine = Int(results.int(forColumn: field_Ninety_nine))
        pupil.ninety_nine_dinamic = Int(results.int(forColumn: field_Ninety_nine_Dinamic))
        pupil.swipes = Int(results.int(forColumn: field_Swipes))
        pupil.swipes_dinamic = Int(results.int(forColumn: field_Swipes_Dinamic))
        pupil.turtle = Int(results.int(forColumn: field_Turtle))
        pupil.turtle_dinamic = Int(results.int(forColumn: field_Turtle_Dinamic))
        pupil.ufo = Int(results.int(forColumn: field_Ufo))
        pupil.ufo_dinamic = Int(results.int(forColumn: field_Ufo_Dinamic))
        pupil.web = Int(results.int(forColumn: field_Web))
        pupil.web_dinamic = Int(results.int(forColumn: field_Web_Dinamic))
        pupil.windmill = Int(results.int(forColumn: field_Windmill))
        pupil.windmill_dinamic = Int(results.int(forColumn: field_Windmill_Dinamic))
        pupil.wolf = Int(results.int(forColumn: field_Wolf))
        pupil.wolf_dinamic = Int(results.int(forColumn: field_Wolf_Dinamic))
        
        // OFP
        
        pupil.angle = Int(results.int(forColumn: field_Angle))
        pupil.angle_dinamic = Int(results.int(forColumn: field_Angle_Dinamic))
        pupil.bridge = Int(results.int(forColumn: field_Bridge))
        pupil.bridge_dinamic = Int(results.int(forColumn: field_Bridge_Dinamic))
        pupil.finger = Int(results.int(forColumn: field_Finger))
        pupil.finger_dinamic = Int(results.int(forColumn: field_Finger_Dinamic))
        pupil.handstand = Int(results.int(forColumn: field_Handstand))
        pupil.handstand_dinamic = Int(results.int(forColumn: field_Handstand_Dinamic))
        pupil.horizont = Int(results.int(forColumn: field_Horizont))
        pupil.horizont_dinamic = Int(results.int(forColumn: field_Horizont_Dinamic))
        pupil.pushups = Int(results.int(forColumn: field_Pushups))
        pupil.pushups_dinamic = Int(results.int(forColumn: field_Pushups_Dinamic))
        
        // STRETCHING
        
        pupil.butterfly = Int(results.int(forColumn: field_Butterfly))
        pupil.butterfly_dinamic = Int(results.int(forColumn: field_Butterfly_Dinamic))
        pupil.fold = Int(results.int(forColumn: field_Fold))
        pupil.fold_dinamic = Int(results.int(forColumn: field_Fold_Dinamic))
        pupil.shoulders = Int(results.int(forColumn: field_Shoulders))
        pupil.shoulders_dinamic = Int(results.int(forColumn: field_Shoulders_Dinamic))
        pupil.twine = Int(results.int(forColumn: field_Twine))
        pupil.twine_dinamic = Int(results.int(forColumn: field_Twine_Dinamic))
        
        // COMBO
        
        pupil.baby_turtle = Int(results.int(forColumn: field_Baby_Turtle))
        pupil.baby_shoulder = Int(results.int(forColumn: field_Baby_Shoulder))
        pupil.turtle_baby_shoulder = Int(results.int(forColumn: field_Turtle_Baby_Shoulder))
        pupil.turtle_baby_head = Int(results.int(forColumn: field_Turtle_Baby_Head))
        pupil.baby_head_elbow = Int(results.int(forColumn: field_Baby_Head_Elbow))
        pupil.turtle_baby_elbow = Int(results.int(forColumn: field_Turtle_Baby_Elbow))
        pupil.turtle_baby_chair = Int(results.int(forColumn: field_Turtle_Baby_Chair))
        pupil.baby_head_headhollowback = Int(results.int(forColumn: field_Baby_Head_Headhollowback))
        pupil.elbow_hand_onehand = Int(results.int(forColumn: field_Elbow_Hand_Onehand))
        pupil.turtle_hand = Int(results.int(forColumn: field_Turtle_Hand))
        pupil.bridge_hand_invert = Int(results.int(forColumn: field_Bridge_Hand_Invert))
        pupil.chair_onehand = Int(results.int(forColumn: field_Chair_Onehand))
        pupil.bridge_hand_hollowback = Int(results.int(forColumn: field_Bridge_Hand_Hollowback))
        pupil.windmill_turtle = Int(results.int(forColumn: field_Windmill_Turtle))
        pupil.windmill_swipes = Int(results.int(forColumn: field_Windmill_Swipes))
        pupil.swipes_turtle = Int(results.int(forColumn: field_Swipes_Turtle))
        pupil.windmill_head = Int(results.int(forColumn: field_Windmill_Head))
        pupil.flare_windmill = Int(results.int(forColumn: field_Flare_Windmill))
        pupil.flare_swipes = Int(results.int(forColumn: field_Flare_Swipes))
        pupil.windmill_munchmill = Int(results.int(forColumn: field_Windmill_Munchmill))
        pupil.windmill_web = Int(results.int(forColumn: field_Windmill_Web))
        pupil.windmill_halo = Int(results.int(forColumn: field_Windmill_Halo))
        pupil.swipes_hand = Int(results.int(forColumn: field_Swipes_Hand))
        pupil.flare_turtle = Int(results.int(forColumn: field_Flare_Turtle))
        pupil.swipes_ninety = Int(results.int(forColumn: field_Swipes_Ninety))
        pupil.flare_hand = Int(results.int(forColumn: field_Flare_Hand))
        pupil.flare_ninety = Int(results.int(forColumn: field_Flare_Ninety))
        pupil.flare_wolf = Int(results.int(forColumn: field_Flare_Wolf))
        pupil.flare_halo = Int(results.int(forColumn: field_Flare_Halo))
        pupil.windmill_airflare = Int(results.int(forColumn: field_Windmill_Airflare))
        
        // BATTLE
        
        pupil.battle_rating = Int(results.int(forColumn: field_Battle_Rating))
        pupil.battle_cur_position = Int(results.int(forColumn: field_Battle_Cur_Position))
        pupil.battle_new_position = Int(results.int(forColumn: field_Battle_New_Position))
     }
    
 
    
  /*  func updateMovie(withID ID: Int, watched: Bool, likes: Int) {
        if openDatabase() {
            let query = "update movies set \(field_MovieWatched)=?, \(field_MovieLikes)=? where \(field_MovieID)=?"
            
            do {
                try database.executeUpdate(query, values: [watched, likes, ID])
            }
            catch {
                print(error.localizedDescription)
            }
            
            database.close()
        }
    }
    */
    /*
    func deleteMovie(withID ID: Int) -> Bool {
        var deleted = false
        
        if openDatabase() {
            let query = "delete from movies where \(field_MovieID)=?"
            
            do {
                try database.executeUpdate(query, values: [ID])
                deleted = true
            }
            catch {
                print(error.localizedDescription)
            }
            
            database.close()
        }
        
        return deleted
    }
 */
    
}
