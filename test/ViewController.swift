//
//  ViewController.swift
//  test
//
//  Created by 資訊電機學院 on 2020/10/23.
//  Copyright © 2020 資訊電機學院. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var cities = [String]()
        cities.append("Taichung")
        cities.append("Taipei")
        cities.append("Kaohsiung")
        //print(cities)
        cities[2] = "New Taipei"
        //print(cities)
        
        
        var zoo: Set = ["Horse", "Lion", "giraffe"]
        if zoo.contains("Lion") {
            print("The zoo has Lion")
        }
        zoo.insert("monkey")
        
        if zoo.insert("zebra").inserted{
            print("success")
        }else{
            print("failed")
        }
        
        let url2 = "http://120.108.117.108/simdata.php"
        let url = NSURL(string: url2)
        if let data = try? Data(contentsOf: url! as URL){
            do {
                let parseDate = try JSONSerialization.jsonObject(with: data as Data, options:
                    .allowFragments)
                
                let dict = parseDate as! NSDictionary
                
                if let user = dict["user"] ?? 0{
                    
                    print("user: \(user)")
                }
            } catch  {
                print(error.localizedDescription)
            }
        }
    }


}

