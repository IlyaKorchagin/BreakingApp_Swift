//
//  PowerTableViewController.swift
//  FMDBTut
//
//  Created by Илья on 01/05/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class PowerTableViewController: UITableViewController {

    @IBOutlet weak var BackspinRating: UIProgressView!
    @IBOutlet weak var BackspinRatingTitle: UILabel!
    
    @IBOutlet weak var SwipesRating: UIProgressView!
    @IBOutlet weak var SwipesRatingTitle: UILabel!
    
    @IBOutlet weak var TurtleRating: UIProgressView!
    @IBOutlet weak var TurtleRatingTitle: UILabel!
    
    @IBOutlet weak var WindmillRating: UIProgressView!
    @IBOutlet weak var WindmillRatingTitle: UILabel!
    
    @IBOutlet weak var HeadspinRating: UIProgressView!
    @IBOutlet weak var HeadspinRatingTitle: UILabel!
    
    @IBOutlet weak var CricketRating: UIProgressView!
    @IBOutlet weak var CricketRatingTitle: UILabel!
    
    @IBOutlet weak var WebRating: UIProgressView!
    @IBOutlet weak var WebRatingTitle: UILabel!
    
    @IBOutlet weak var WolfRating: UIProgressView!
    @IBOutlet weak var WolfRatingTitle: UILabel!
    
    @IBOutlet weak var MunchmillRating: UIProgressView!
    @IBOutlet weak var MunchmillRatingTitle: UILabel!
    
    @IBOutlet weak var FlareRating: UIProgressView!
    @IBOutlet weak var FlareRatingTitle: UILabel!
    
    @IBOutlet weak var NinetyRating: UIProgressView!
    @IBOutlet weak var NinetyRatingTitle: UILabel!
    
    @IBOutlet weak var HaloRating: UIProgressView!
    @IBOutlet weak var HaloRatingTitle: UILabel!
    
    @IBOutlet weak var JackhammerRating: UIProgressView!
    @IBOutlet weak var JackhammerRatingTitle: UILabel!
    
    @IBOutlet weak var UfoRating: UIProgressView!
    @IBOutlet weak var UfoRatingTitle: UILabel!
    
    @IBOutlet weak var ElbowAirflareRating: UIProgressView!
    @IBOutlet weak var ElbowAirflareRatingTitle: UILabel!
    
    @IBOutlet weak var AirflareRating: UIProgressView!
    @IBOutlet weak var AirflareRatingTitle: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            self.view.setBackgroundImage(img: image)
        }

        BackspinRating.progress = Float(curPupil.backspin) / 10
        if (curPupil.backspin_dinamic == 0)
        {
            BackspinRatingTitle.text = String(curPupil.backspin)+" %"
        }
        else if (curPupil.backspin_dinamic > 0)
        {
             BackspinRatingTitle.text = String(curPupil.backspin)+" %" + "  (↑ " + String(curPupil.backspin_dinamic) + ")"
        }
        else
        {
             BackspinRatingTitle.text = String(curPupil.backspin)+" %" + "   (↓ " + String(curPupil.backspin_dinamic) + ")"
        }

        SwipesRating.progress = Float(curPupil.swipes) / 100
        SwipesRatingTitle.text = String(curPupil.swipes)+" %"
        if (curPupil.swipes_dinamic == 0)
        {
            SwipesRatingTitle.text = String(curPupil.swipes)+" %"
        }
        else if (curPupil.swipes_dinamic > 0)
        {
            SwipesRatingTitle.text = String(curPupil.swipes)+" %" + "  (↑ " + String(curPupil.swipes_dinamic) + ")"
        }
        else
        {
            SwipesRatingTitle.text = String(curPupil.swipes)+" %" + "   (↓ " + String(curPupil.swipes_dinamic) + ")"
        }

        TurtleRating.progress = Float(curPupil.turtle) / 100
        if (curPupil.turtle_dinamic == 0)
        {
            TurtleRatingTitle.text = String(curPupil.turtle)+" %"
        }
        else if (curPupil.turtle_dinamic > 0)
        {
            TurtleRatingTitle.text = String(curPupil.turtle)+" %" + "  (↑ " + String(curPupil.turtle_dinamic) + ")"
        }
        else
        {
            TurtleRatingTitle.text = String(curPupil.turtle)+" %" + "   (↓ " + String(curPupil.turtle_dinamic) + ")"
        }

        WindmillRating.progress = Float(curPupil.windmill) / 100
        if (curPupil.windmill_dinamic == 0)
        {
            WindmillRatingTitle.text = String(curPupil.windmill)+" %"
        }
        else if (curPupil.windmill_dinamic > 0)
        {
             WindmillRatingTitle.text = String(curPupil.windmill)+" %" + "  (↑ " + String(curPupil.windmill_dinamic) + ")"
        }
        else
        {
             WindmillRatingTitle.text = String(curPupil.windmill)+" %" + "   (↓ " + String(curPupil.windmill_dinamic) + ")"
        }
        
        HeadspinRating.progress = Float(curPupil.headspin) / 100
        if (curPupil.headspin_dinamic == 0)
        {
            HeadspinRatingTitle.text = String(curPupil.headspin)+" %"
        }
        else if (curPupil.headspin_dinamic > 0)
        {
            HeadspinRatingTitle.text = String(curPupil.headspin)+" %" + "  (↑ " + String(curPupil.headspin_dinamic) + ")"
        }
        else
        {
            HeadspinRatingTitle.text = String(curPupil.headspin)+" %" + "   (↓ " + String(curPupil.headspin_dinamic) + ")"
        }
            
        CricketRating.progress = Float(curPupil.cricket) / 100
        if (curPupil.cricket_dinamic == 0)
        {
            CricketRatingTitle.text = String(curPupil.cricket)+" %"
        }
        else if (curPupil.cricket_dinamic > 0)
        {
            CricketRatingTitle.text = String(curPupil.cricket)+" %" + "  (↑ " + String(curPupil.cricket_dinamic) + ")"
        }
        else
        {
            CricketRatingTitle.text = String(curPupil.cricket)+" %" + "   (↓ " + String(curPupil.cricket_dinamic) + ")"
        }
            
        WebRating.progress = Float(curPupil.web) / 100
        if (curPupil.web_dinamic == 0)
        {
            WebRatingTitle.text = String(curPupil.web)+" %"
        }
        else if (curPupil.web_dinamic > 0)
        {
             WebRatingTitle.text = String(curPupil.web)+" %" + "  (↑ " + String(curPupil.web_dinamic) + ")"
        }
        else
        {
             WebRatingTitle.text = String(curPupil.web)+" %" + "   (↓ " + String(curPupil.web_dinamic) + ")"
        }
            
        WolfRating.progress = Float(curPupil.wolf) / 100
        if (curPupil.wolf_dinamic == 0)
        {
            WolfRatingTitle.text = String(curPupil.wolf)+" %"
        }
        else if (curPupil.wolf_dinamic > 0)
        {
            WolfRatingTitle.text = String(curPupil.wolf)+" %" + "  (↑ " + String(curPupil.wolf_dinamic) + ")"
        }
        else
        {
            WolfRatingTitle.text = String(curPupil.wolf)+" %" + "   (↓ " + String(curPupil.wolf_dinamic) + ")"
        }
        
        MunchmillRating.progress = Float(curPupil.munchmill) / 100
        if (curPupil.munchmill_dinamic == 0)
        {
            MunchmillRatingTitle.text = String(curPupil.munchmill)+" %"
        }
        else if (curPupil.munchmill_dinamic > 0)
        {
            MunchmillRatingTitle.text = String(curPupil.munchmill)+" %" + "  (↑ " + String(curPupil.munchmill_dinamic) + ")"
        }
        else
        {
            MunchmillRatingTitle.text = String(curPupil.munchmill)+" %" + "   (↓ " + String(curPupil.munchmill_dinamic) + ")"
        }
            
        FlareRating.progress = Float(curPupil.flare) / 100
        if (curPupil.flare_dinamic == 0)
        {
            FlareRatingTitle.text = String(curPupil.flare)+" %"
        }
        else if (curPupil.flare_dinamic > 0)
        {
            FlareRatingTitle.text = String(curPupil.flare)+" %" + "  (↑ " + String(curPupil.flare_dinamic) + ")"
        }
        else
        {
            FlareRatingTitle.text = String(curPupil.flare)+" %" + "   (↓ " + String(curPupil.flare_dinamic) + ")"
        }
            
        NinetyRating.progress = Float(curPupil.ninety_nine) / 100
        if (curPupil.ninety_nine_dinamic == 0)
        {
            NinetyRatingTitle.text = String(curPupil.ninety_nine)+" %"
        }
        else if (curPupil.ninety_nine_dinamic > 0)
        {
             NinetyRatingTitle.text = String(curPupil.ninety_nine)+" %" + "  (↑ " + String(curPupil.ninety_nine_dinamic) + ")"
        }
        else
        {
             NinetyRatingTitle.text = String(curPupil.ninety_nine)+" %" + "   (↓ " + String(curPupil.ninety_nine_dinamic) + ")"
        }
            
        HaloRating.progress = Float(curPupil.halo) / 100
        if (curPupil.halo_dinamic == 0)
        {
            HaloRatingTitle.text = String(curPupil.halo)+" %"
        }
        else if (curPupil.halo_dinamic > 0)
        {
            HaloRatingTitle.text = String(curPupil.halo)+" %" + "  (↑ " + String(curPupil.halo_dinamic) + ")"
        }
        else
        {
            HaloRatingTitle.text = String(curPupil.halo)+" %" + "   (↓ " + String(curPupil.halo_dinamic) + ")"
        }
        
        JackhammerRating.progress = Float(curPupil.jackhammer) / 100
        if (curPupil.jackhammer_dinamic == 0)
        {
            JackhammerRatingTitle.text = String(curPupil.jackhammer)+" %"
        }
        else if (curPupil.jackhammer_dinamic > 0)
        {
            JackhammerRatingTitle.text = String(curPupil.jackhammer)+" %" + "  (↑ " + String(curPupil.jackhammer_dinamic) + ")"
        }
        else
        {
            JackhammerRatingTitle.text = String(curPupil.jackhammer)+" %" + "   (↓ " + String(curPupil.jackhammer_dinamic) + ")"
        }
            
        UfoRating.progress = Float(curPupil.ufo) / 100
        if (curPupil.ufo_dinamic == 0)
        {
            UfoRatingTitle.text = String(curPupil.ufo)+" %"
        }
        else if (curPupil.ufo_dinamic > 0)
        {
            UfoRatingTitle.text = String(curPupil.ufo)+" %" + "  (↑ " + String(curPupil.ufo_dinamic) + ")"
        }
        else
        {
            UfoRatingTitle.text = String(curPupil.ufo)+" %" + "   (↓ " + String(curPupil.ufo_dinamic) + ")"
        }
            
        ElbowAirflareRating.progress = Float(curPupil.elbowairflare) / 100
        if (curPupil.elbowairflare_dinamic == 0)
        {
            ElbowAirflareRatingTitle.text = String(curPupil.elbowairflare)+" %"
        }
        else if (curPupil.elbowairflare_dinamic > 0)
        {
            ElbowAirflareRatingTitle.text = String(curPupil.elbowairflare)+" %" + "  (↑ " + String(curPupil.elbowairflare_dinamic) + ")"
        }
        else
        {
            ElbowAirflareRatingTitle.text = String(curPupil.elbowairflare)+" %" + "   (↓ " + String(curPupil.elbowairflare_dinamic) + ")"
        }
            
        AirflareRating.progress = Float(curPupil.airflare) / 100
        if (curPupil.airflare_dinamic == 0)
        {
            AirflareRatingTitle.text = String(curPupil.airflare)+" %"
        }
        else if (curPupil.airflare_dinamic > 0)
        {
            AirflareRatingTitle.text = String(curPupil.airflare)+" %" + "  (↑ " + String(curPupil.airflare_dinamic) + ")"
        }
        else
        {
            AirflareRatingTitle.text = String(curPupil.airflare)+" %" + "   (↓ " + String(curPupil.airflare_dinamic) + ")"
        }

    }

}
