//
//  ResultViewController.swift
//  Instagram
//
//  Created by 小西洋平 on 2017/03/21.
//  Copyright © 2017年 youhei.konishi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class ResultViewController: UIViewController {
    
    var comment:PostData?
    var com: String = ""
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func sendButton(_ sender: Any) {
        com = textField.text!
    
        comment?.comment.append(com)
        
        let postRef = FIRDatabase.database().reference().child(Const.PostPath).child((comment?.id!)!)
        let word = ["comment": comment?.comment]
        postRef.updateChildValues(word)
        
        //画面遷移

        dismiss(animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //コメントに入力された文字をpostDataに代入して
        //遷移元に返す
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
