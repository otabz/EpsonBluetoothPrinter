//
//  PickerTableView.swift
//  EpsonPrint
//
//  Created by Waseel ASP Ltd. on 4/25/17.
//  Copyright © 2017 Waseel ASP Ltd. All rights reserved.
//

import Foundation

class PickerTableview {
    
    var selectIndex_: Int = 0
    var pickerItems_ = [Any]()
    
    init() {
        selectIndex_ = 0
    }
    
    deinit {
        //baseView_ = nil
        //backView_ = nil
    }
    
    // set item list
    func setItemList(_ items: [Any]) {
        pickerItems_ = items
    }
    
    // get item
    func getItem(_ position: Int) -> String? {
        let tmpObject: Any? = getObject(position)
        if tmpObject != nil {
            return (tmpObject as AnyObject).description!
        }
        else {
            return nil
        }
    }
    
    // get object
    func getObject(_ position: Int) -> Any? {
        if pickerItems_ == nil {
            return nil
        }
        if position < pickerItems_.count {
            return pickerItems_[position]
        }
        else {
            return nil
        }
    }

}
