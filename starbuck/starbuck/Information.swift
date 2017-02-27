//
//  Information.swift
//  starbuck
//
//  Created by Chalermwut on 2/27/2560 BE.
//  Copyright © 2560 Chalermwut. All rights reserved.
//

import UIKit

class Information {
    var contactName : String
    var contactNickName : String
    var contactPhoneNumber : String
    var contactType : Int
    var contactPublicType : Int
    var contactImage : UIImage
    
    init(contactName : String ,contactNickName : String,contactPhoneNumber : String) {
        self.contactName = contactName
        self.contactNickName = contactNickName
        self.contactPhoneNumber = contactPhoneNumber
    }
    
}

