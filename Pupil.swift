//
//  Pupil.swift
//  FMDBTut
//
//  Created by Илья on 11/04/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import Foundation

public class Pupil {
    var name = String()
    var rating = 0.0
    var frezze_rating = 0.0
    var powermove_rating = 0.0
    var ofp_rating = 0.0
    var stretching_rating = 0.0
    var current_position = 0
    var new_position = 0
    
    //---------- FREZZE -----------
    
    var babyfrezze = 0
    var babyfrezze_dinamic = 0
    var chairfrezze = 0
    var chairfrezze_dinamic = 0
    var elbowfrezze = 0
    var elbowfrezze_dinamic = 0
    var headfrezze = 0
    var headfrezze_dinamic = 0
    var headhollowbackfrezze = 0
    var headhollowbackfrezze_dinamic = 0
    var hollowbackfrezze = 0
    var hollowbackfrezze_dinamic = 0
    var invertfrezze = 0
    var invertfrezze_dinamic = 0
    var onehandfrezze = 0
    var onehandfrezze_dinamic = 0
    var shoulderfrezze = 0
    var shoulderfrezze_dinamic = 0
    var turtlefrezze = 0
    var turtlefrezze_dinamic = 0
    
    //---------- FREZZE -----------
    
    //----------- POWER MOVE -------------
    
    var airflare = 0
    var airflare_dinamic = 0
    var backspin = 0
    var backspin_dinamic = 0
    var cricket = 0
    var cricket_dinamic = 0
    var elbowairflare = 0
    var elbowairflare_dinamic = 0
    var flare = 0
    var flare_dinamic = 0
    var jackhammer = 0
    var jackhammer_dinamic = 0
    var halo = 0
    var halo_dinamic = 0
    var headspin = 0
    var headspin_dinamic = 0
    var munchmill = 0
    var munchmill_dinamic = 0
    var ninety_nine = 0
    var ninety_nine_dinamic = 0
    var swipes = 0
    var swipes_dinamic = 0
    var turtle = 0
    var turtle_dinamic = 0
    var ufo = 0
    var ufo_dinamic = 0
    var web = 0
    var web_dinamic = 0
    var windmill = 0
    var windmill_dinamic = 0
    var wolf = 0
    var wolf_dinamic = 0
    
    //----------- POWER MOVE -------------
    
    //----------- OFP -------------
    
    var angle = 0
    var angle_dinamic = 0
    var bridge = 0
    var bridge_dinamic = 0
    var finger = 0
    var finger_dinamic = 0
    var handstand = 0
    var handstand_dinamic = 0
    var horizont = 0
    var horizont_dinamic = 0
    var pushups = 0
    var pushups_dinamic = 0
    
    //----------- OFP -------------
    
    //----------- stretching -------------
    
    var butterfly = 0
    var butterfly_dinamic = 0
    var fold = 0
    var fold_dinamic = 0
    var shoulders = 0
    var shoulders_dinamic = 0
    var twine = 0
    var twine_dinamic = 0
    
    //----------- stretching -------------
    
    //----------- combo -------------
    
    var baby_turtle = 0
    var baby_shoulder = 0
    var turtle_baby_shoulder = 0
    var turtle_baby_head = 0
    
    var baby_head_elbow = 0
    var turtle_baby_elbow = 0
    var turtle_baby_chair = 0
    var baby_head_headhollowback = 0
    
    var elbow_hand_onehand = 0
    var turtle_hand = 0
    var bridge_hand_invert = 0
    
    var chair_onehand = 0
    var bridge_hand_hollowback = 0
    
    var windmill_turtle = 0
    var windmill_swipes = 0
    var swipes_turtle = 0
    var windmill_head = 0
    
    var flare_windmill = 0
    var flare_swipes = 0
    var windmill_munchmill = 0
    var windmill_web = 0
    
    var windmill_halo = 0
    var swipes_hand = 0
    var flare_turtle = 0
    var swipes_ninety = 0
    
    var flare_hand = 0
    var flare_ninety = 0
    var flare_wolf = 0
    var flare_halo = 0
    
    var flare_airflare = 0
    var airflare_elbowairflare = 0
    var flare_ufo = 0
    var windmill_airflare = 0
    
    //-----------combo -------------
    
    //-----------  battle  ----------
    
    var battle_rating = 0
    var battle_cur_position = 0
    var battle_new_position = 0
    
    //-----------  battle  ----------
    
}

public var curPupil = Pupil()
public var sortField = "RATING"
