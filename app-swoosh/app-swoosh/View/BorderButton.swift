//
//  BorderButton.swift
//  app-swoosh
//
//  Created by MAC on 12/19/19.
//  Copyright © 2019 Johan Espino. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
