//
//  ViewController.swift
//  RxSwift_Study
//
//  Created by kengo kato on 2018/01/18.
//  Copyright © 2018年 kengo kato. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let modelView = TestViewModel()
        
        modelView.test2
            .drive(label.rx.text)
            .disposed(by: disposeBag)
        
//        modelView.mogemoge(3)
        
        modelView.huhu("gggg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

