//
//  ViewController.swift
//  GYNetworkToolDemo
//
//  Created by y g on 2020/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let safeURL = "http://suggest.lagou.com/home/青云/180100000/10".addingPercentEncoding(withAllowedCharacters:.urlQueryAllowed)
        NSObject.get(with: safeURL!) { (json, string, data) in
            print(json!)
        } failure: { (error) in
            print(error!)
        }
    }

}

