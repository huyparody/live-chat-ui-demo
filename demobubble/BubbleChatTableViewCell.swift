//
//  BubbleChatTableViewCell.swift
//  demobubble
//
//  Created by Huy Trinh Duc on 6/19/20.
//  Copyright © 2020 Parker Industries. All rights reserved.
//

import UIKit
public enum BubbleType {
    case normal
    case sticker
    case giftSticker
}

public class ModelTest {
    var name: String
    var comment: String
    var type: BubbleType
    
    init(name: String, comment: String, type: BubbleType) {
        self.name = name
        self.comment = comment
        self.type = type
    }
}

class BubbleChatTableViewCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var stickerImg: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var giftStickerImg: UIImageView!
    @IBOutlet weak var tokenSentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(data: ModelTest) {
        switch data.type {
        case .normal:
            giftStickerImg.isHidden = true
            stickerImg.isHidden = true
            tokenSentLabel.isHidden = true
            commentLabel.isHidden = false
            userNameLabel.text = data.name
            commentLabel.text = data.comment
        case .giftSticker:
            giftStickerImg.isHidden = false
            stickerImg.isHidden = true
            tokenSentLabel.isHidden = false
            commentLabel.isHidden = false
            userNameLabel.text = data.name
            commentLabel.text = data.comment
        case .sticker:
            giftStickerImg.isHidden = true
            stickerImg.isHidden = false
            tokenSentLabel.isHidden = true
            commentLabel.isHidden = true
            userNameLabel.text = data.name
            commentLabel.text = data.comment
        default:
            return
        }
    }


    
}
