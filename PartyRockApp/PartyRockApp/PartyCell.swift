//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Abhishek Sisodia on 2017-03-05.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(videoInfo: VideoInfo){
        videoTitle.text = videoInfo.videoTitle
        
        let url = URL(string: videoInfo.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
    }
}
