//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 外間美希 on 2018/02/16.
//  Copyright © 2018年 miki.honda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func handle(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        // 遷移先のResultViewControllerで宣言しているnameに代入して渡す
        resultViewController.name = textField.text
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他画面から segue を使って戻ってきた時に呼ばれる
    }


}

