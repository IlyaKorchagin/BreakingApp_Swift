//
//  FrezzesTableViewController.swift
//  FMDBTut
//
//  Created by Илья on 01/05/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class FrezzesTableViewController: UITableViewController {
    
    @IBOutlet weak var BabyRatingTitle: UILabel!
    @IBOutlet weak var BabyRating: UIProgressView!
    
    @IBOutlet weak var ShoulderRating: UIProgressView!
    @IBOutlet weak var ShoulderRatingTitle: UILabel!
    
    @IBOutlet weak var TurtleRating: UIProgressView!
    @IBOutlet weak var TurtleRatingTitle: UILabel!
    
    @IBOutlet weak var HeadRating: UIProgressView!
    @IBOutlet weak var HeadRatingTitle: UILabel!
    
    @IBOutlet weak var ChairRating: UIProgressView!
    @IBOutlet weak var ChairRatingTitle: UILabel!
    
    @IBOutlet weak var ElbowRating: UIProgressView!
    @IBOutlet weak var ElbowRatingTitle: UILabel!
    
    @IBOutlet weak var HeadHollowbackRating: UIProgressView!
    @IBOutlet weak var HeadHollowbackRatingTitle: UILabel!
    
    @IBOutlet weak var OnehandRating: UIProgressView!
    @IBOutlet weak var OnehandRatingTitle: UILabel!
    
    @IBOutlet weak var InvertRating: UIProgressView!
    @IBOutlet weak var InvertRatingTitle: UILabel!
    
    @IBOutlet weak var HollowbackRating: UIProgressView!
    @IBOutlet weak var HollowbackRatingTitle: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            self.view.setBackgroundImage(img: image)
        }
        
        BabyRating.progress = Float(curPupil.babyfrezze) / 100
        if (curPupil.babyfrezze_dinamic == 0)
        {
            BabyRatingTitle.text = String(curPupil.babyfrezze)+" %"
        }
        else if (curPupil.babyfrezze_dinamic > 0)
        {
            BabyRatingTitle.text = String(curPupil.babyfrezze)+" %" + "   (↑ " + String(curPupil.babyfrezze_dinamic) + ")"
        }
        else
        {
            BabyRatingTitle.text = String(curPupil.babyfrezze)+" %" + "   (↓ " + String(curPupil.babyfrezze_dinamic) + ")"
        }
        
        
        ShoulderRating.progress = Float(curPupil.shoulderfrezze) / 100
        if (curPupil.shoulderfrezze_dinamic == 0)
        {
            ShoulderRatingTitle.text = String(curPupil.shoulderfrezze)+" %"
        }
        else if (curPupil.shoulderfrezze_dinamic > 0)
        {
             ShoulderRatingTitle.text = String(curPupil.shoulderfrezze)+" %" + "   (↑ " + String(curPupil.shoulderfrezze_dinamic) + ")"
        }
        else
        {
             ShoulderRatingTitle.text = String(curPupil.shoulderfrezze)+" %" + "   (↓ " + String(curPupil.shoulderfrezze_dinamic) + ")"
        }
       
        
        TurtleRating.progress = Float(curPupil.turtlefrezze) / 100
        if (curPupil.turtlefrezze_dinamic == 0)
        {
            TurtleRatingTitle.text = String(curPupil.turtlefrezze)+" %"
        }
        else if (curPupil.turtlefrezze_dinamic > 0)
        {
             TurtleRatingTitle.text = String(curPupil.turtlefrezze)+" %" + "   (↑ " + String(curPupil.turtlefrezze_dinamic) + ")"
        }
        else
        {
             TurtleRatingTitle.text = String(curPupil.turtlefrezze)+" %" + "   (↓ " + String(curPupil.turtlefrezze_dinamic) + ")"
        }
        
        HeadRating.progress = Float(curPupil.headfrezze) / 100
        if (curPupil.headfrezze_dinamic == 0)
        {
            HeadRatingTitle.text = String(curPupil.headfrezze)+" %"
        }
        else if (curPupil.headfrezze_dinamic > 0)
        {
             HeadRatingTitle.text = String(curPupil.headfrezze)+" %" + "   (↑ " + String(curPupil.headfrezze_dinamic) + ")"
        }
        else
        {
             HeadRatingTitle.text = String(curPupil.headfrezze)+" %" + "   (↓ " + String(curPupil.headfrezze_dinamic) + ")"
        }
        
        ChairRating.progress = Float(curPupil.chairfrezze) / 100
        if (curPupil.chairfrezze_dinamic == 0)
        {
            ChairRatingTitle.text = String(curPupil.chairfrezze)+" %"
        }
        else if (curPupil.chairfrezze_dinamic > 0)
        {
            ChairRatingTitle.text = String(curPupil.chairfrezze)+" %" + "  (↑ " + String(curPupil.chairfrezze_dinamic) + ")"
        }
        else
        {
            ChairRatingTitle.text = String(curPupil.chairfrezze)+" %" + "   (↓ " + String(curPupil.chairfrezze_dinamic) + ")"
        }
        
        ElbowRating.progress = Float(curPupil.elbowfrezze) / 100
        if (curPupil.elbowfrezze_dinamic == 0)
        {
            ElbowRatingTitle.text = String(curPupil.elbowfrezze)+" %"
        }
        else if (curPupil.elbowfrezze_dinamic > 0)
        {
             ElbowRatingTitle.text = String(curPupil.elbowfrezze)+" %" + "  (↑ " + String(curPupil.elbowfrezze_dinamic) + ")"
        }
        else
        {
             ElbowRatingTitle.text = String(curPupil.elbowfrezze)+" %" + "   (↓ " + String(curPupil.elbowfrezze_dinamic) + ")"
        }
        
        HeadHollowbackRating.progress = Float(curPupil.headhollowbackfrezze) / 100
        if (curPupil.headhollowbackfrezze_dinamic == 0)
        {
            HeadHollowbackRatingTitle.text = String(curPupil.headhollowbackfrezze)+" %"
        }
        else if (curPupil.headhollowbackfrezze_dinamic > 0)
        {
            HeadHollowbackRatingTitle.text = String(curPupil.headhollowbackfrezze)+" %" + "  (↑ " + String(curPupil.headhollowbackfrezze_dinamic) + ")"
        }
        else
        {
            HeadHollowbackRatingTitle.text = String(curPupil.headhollowbackfrezze)+" %" + "   (↓ " + String(curPupil.headhollowbackfrezze_dinamic) + ")"
        }
        
        OnehandRating.progress = Float(curPupil.onehandfrezze) / 100
        if (curPupil.onehandfrezze_dinamic == 0)
        {
            OnehandRatingTitle.text = String(curPupil.onehandfrezze)+" %"
        }
        else if (curPupil.onehandfrezze_dinamic > 0)
        {
            OnehandRatingTitle.text = String(curPupil.onehandfrezze)+" %" + "  (↑ " + String(curPupil.onehandfrezze_dinamic) + ")"
        }
        else
        {
            OnehandRatingTitle.text = String(curPupil.onehandfrezze)+" %" + "   (↓ " + String(curPupil.onehandfrezze_dinamic) + ")"
        }
        
        InvertRating.progress = Float(curPupil.invertfrezze) / 100
        if (curPupil.invertfrezze_dinamic == 0)
        {
            InvertRatingTitle.text = String(curPupil.invertfrezze)+" %"
        }
        else if (curPupil.invertfrezze_dinamic > 0)
        {
             InvertRatingTitle.text = String(curPupil.invertfrezze)+" %" + "  (↑ " + String(curPupil.invertfrezze_dinamic) + ")"
        }
        else
        {
             InvertRatingTitle.text = String(curPupil.invertfrezze)+" %" + "   (↓ " + String(curPupil.invertfrezze_dinamic) + ")"
        }
        
        HollowbackRating.progress = Float(curPupil.hollowbackfrezze) / 100
        if (curPupil.hollowbackfrezze_dinamic == 0)
        {
            HollowbackRatingTitle.text = String(curPupil.hollowbackfrezze)+" %"
        }
        else if (curPupil.hollowbackfrezze_dinamic > 0)
        {
            HollowbackRatingTitle.text = String(curPupil.hollowbackfrezze)+" %" + "  (↑ " + String(curPupil.hollowbackfrezze_dinamic) + ")"
        }
        else
        {
            HollowbackRatingTitle.text = String(curPupil.hollowbackfrezze)+" %" + "   (↓ " + String(curPupil.hollowbackfrezze_dinamic) + ")"
        }
        
    }

}
