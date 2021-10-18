//
//  BoradViewController.swift
//  Ledboard_Project
//
//  Created by 지성 on 2021/10/19.
//

import UIKit

class BoradViewController: UIViewController {

    
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UIsetting()

    
    }
    
    func UIsetting() {
        outputTextField.placeholder  = "텍스트를 입력해주세요"
        
        resultLabel.textAlignment = .center
        resultLabel.font = .systemFont(ofSize: 120)
        
        
    }
    
    @IBAction func ClickButtonAction(_ sender: UIButton) {
        print("보내기 버튼 입력")
        
        resultLabel.text = outputTextField.text     
    }
    
    @IBAction func textColorChangeAction(_ sender: UIButton) {
        
        resultLabel.textColor = getRandomColor()

    }
    
    //텍스트 색상 변경 부분은 구글에서 찾음
    func getRandomColor() -> UIColor{
         
         let randomRed:CGFloat = CGFloat(drand48())
         
         let randomGreen:CGFloat = CGFloat(drand48())
         
         let randomBlue:CGFloat = CGFloat(drand48())
         
         return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
         
     }



    }

