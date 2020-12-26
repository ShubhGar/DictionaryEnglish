//
//  SuggestionTableViewCell.swift
//  DictionaryEnglish
//
//  Created by shubham Garg on 16/07/20.
//  Copyright © 2020 shubham Garg. All rights reserved.
//

import UIKit

class SuggestionTableViewCell: UITableViewCell {
    @IBOutlet weak var wordLbl: UILabel!
    @IBOutlet weak var meaningLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
