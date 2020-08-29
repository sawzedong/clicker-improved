//
//  TableViewCell.swift
//  clicker-improved
//
//  Created by Shaw Sheng Saw on 29/8/20.
//  Copyright © 2020 NIL. All rights reserved.
//

import UIKit


class TableViewCell: UITableViewCell {
    @IBOutlet weak var scoreCellStackView: UIStackView!
    @IBOutlet weak var rootCellView: UIView!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        scoreCellStackView.layer.backgroundColor = UIColor(red:)
        rootCellView.layer.cornerRadius = 8
        positionLabel.layer.cornerRadius = 8
//        positionLabel.layer.borderColor = UIColor(red:)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
