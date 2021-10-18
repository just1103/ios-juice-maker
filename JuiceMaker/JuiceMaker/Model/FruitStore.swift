//
//  JuiceMaker - FruitStore.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct Fruit {
    var name: FruitName
    var count: Int = 10
    
    enum FruitName {
        case 딸기 // rawValue String?
        case 바나나
        case 파인애플
        case 키위
        case 망고
    }
}

// 과일 저장소 타입
class FruitStore {
    enum FruitStoreError: String, LocalizedError {
        case inValidFruitChoice = "유효하지 않은 선택입니다."
        case lackOfStock = "재료가 부족합니다."
        
        var description: String {
            return rawValue
        }
    }

    var inventory: [Fruit] = [
        Fruit(name: .딸기),
        Fruit(name: .바나나),
        Fruit(name: .파인애플),
        Fruit(name: .키위),
        Fruit(name: .망고)
    ]
}