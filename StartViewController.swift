//
//  StartViewController.swift
//  FMDBTut
//
//  Created by Илья on 21/04/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
  
    @IBOutlet weak var EnterText: UITextField!
    var pupils: [Pupil]!
    
    var selectedPupilIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            
            self.view.setBackgroundImage(img: image)
        }
        
        // MARK: - загружаем массив учеников из базы данных
        pupils = DBManager.shared.loadPupils(sortField: DBManager.shared.field_Rating)

    }
    
    // MARK: - Функция идентификации пользователя в базе данных
    @IBAction func EnterButton(_ sender: UIButton) {
        
        // MARK: - результат поиска ученика в базе
        var result = 0
        var curPupilIndex = 0
        var forIndex = 0
        
        // MARK: - ищем ученика а базе, пробегаемся по массиву
        for current_pupil  in pupils {
            if EnterText.text == current_pupil.name {
                result += 1
                curPupilIndex = forIndex
            }
            forIndex += 1
        }
        
        // MARK: - анализируем результат, в случае отсутсвия выдаем сообщение
        if result == 0 {
            self.alert(title: "Внимание!", message: "Данного польязователя в базе нет", style: .alert)
        }
        // Если пользователь с указанным именем существует в базе, то переходим в его личный кабинет, на PupilViewController
        else {
          
            curPupil = pupils[curPupilIndex]
            guard let userVC = storyboard?.instantiateViewController(withIdentifier: "PupilViewController") as? PupilViewController else { return }
            
            navigationController?.pushViewController(userVC, animated: true)
         }
 
    }
    //MARK: - ALERT function
    func alert(title: String, message: String , style: UIAlertController.Style){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        //MARK: - Button Ok
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.EnterText.text = ""
            self.EnterText.becomeFirstResponder()
        }
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
   
}

// Загружаем в Background View нашу картинку
extension UIView{
    
    func setBackgroundImage(img: UIImage){
        
        UIGraphicsBeginImageContext(self.frame.size)
        img.draw(in: self.bounds)
        let patternImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.backgroundColor = UIColor(patternImage: patternImage)
    }
}

