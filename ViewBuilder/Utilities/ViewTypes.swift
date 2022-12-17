//
//  ViewTypes.swift
//  ViewBuilder
//
//  Created by Mohammed Safadi Macbook Pro on 16/12/2022.
//

import Foundation

/**
 This enum for views types or views state
    1- needLogin :  mean view that need that need login before inital
    2- loading : mean view that need a loader before appear
    3- empty : mean view that have no data to displayed
    4- ready : mean view is ready to appear
 */

enum ViewsTypes {
    case needLogin
    case loading
    case empty
    case ready
}
