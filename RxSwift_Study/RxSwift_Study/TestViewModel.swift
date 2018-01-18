//
//  TestViewModel.swift
//  RxSwift_Study
//
//  Created by kengo kato on 2018/01/18.
//  Copyright © 2018年 kengo kato. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class TestViewModel {
    
    lazy var testRelay = BehaviorRelay<Int>(value: 0)
    lazy var test = testRelay.asDriver()
    
    lazy var test2Relay = BehaviorRelay<String>(value: "hoge")
    lazy var test2 = test2Relay.asDriver()
    
    init() {
        hogehoge()
    }
    
    func hogehoge() {
//        mogemoge(5)
    }
    
    func mogemoge(_ intValue : Int) {
        testRelay.accept(intValue)
    }
    
    func huhu(_ stringValue : String) {
        test2Relay.accept(stringValue)
    }
    
    
}
