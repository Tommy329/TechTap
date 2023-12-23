//
//  ViewController.swift
//  TechTap
//
//  Created by . HIKARU on 2023/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label : UILabel!
    var count : Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetgame()
    }
    func buttonTaped (_ sender: UIButton) {
        
        count -= 1
        label.text = "\(count)"
        sender .removeFromSuperview()
        if count == 0 {
            let alert = UIAlertController(
                title: "クリア",
                message: "すべてのボタンがタップされたよ",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(
                title: "REPLAY",
                style: .default,
                handler: { action in
                    self.resetgame()
                }
            ))
            present(alert, animated: true, completion: nil)
        }
    }
    func resetgame() {
        for i in 0..<100 {
            let button = addButton(on: view)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
            button.setTitle("🥺", for: .normal)
            button.tag = i
            
            button.addAction(
                .init(handler: { action in
                    let sender = action .sender as! UIButton
                    self.buttonTaped(sender)
                }), for: .touchUpInside
            )
        }
        count = 100
        label.text = "\(count)"
    }
}
