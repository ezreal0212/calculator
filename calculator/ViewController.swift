//
//  ViewController.swift
//  calculator
//
//  Created by Apple on 2018/5/20.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var totalUILabel: UILabel!
    @IBOutlet weak var taxUITextField: UITextField!
    @IBOutlet weak var moneyUITextField: UITextField!
    
    @IBAction func countUIButton(_ sender: UIButton) {
        //結帳收鍵盤//
        view.endEditing(true)
        
        totalUILabel.isHidden = false
        
        if moneyUITextField.text == "" || taxUITextField.text! == "" {
            totalUILabel.text="請輸入金額及小費！"
            resultImageView.image = UIImage(named: "wrong")
            
        }else{
            totalUILabel.text = String(Double(moneyUITextField.text!)!+(Double(moneyUITextField.text!)! * Double(taxUITextField.text!)! / 100) ) + "\n謝謝大爺"
            resultImageView.image = UIImage(named: "thanks")
        }
    }
    
    
    //tap任意處收鍵盤//
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //按return收鍵盤//
    @IBAction func closeKeyboard(_ sender: Any) {
           view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

