//
//  SwipeCardsDataSource.swift
//  Ed's work
//
//  Created by Arjun Narula on 23/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//

import UIKit

protocol SwipeCardsDataSource {
    func numberOfCardsToShow() -> Int
    func card(at index: Int) -> SwipeCardView
    func emptyView() -> UIView?
    
}

protocol SwipeCardsDelegate {
    func swipeDidEnd(on view: SwipeCardView, direction: String, name: String)
}
