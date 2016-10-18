//
//  PhotoCell.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/17.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import UIKit
import Kingfisher

class MainCell: UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func showCell(_ photo: Photo) {
        self.backgroundColor = UIColor(hexString: photo.color!)
        
        let url = URL(string: (photo.urls?.small)!)
        self.photo.kf.setImage(with: url)
    }
}
