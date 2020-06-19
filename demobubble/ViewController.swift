//
//  ViewController.swift
//  demobubble
//
//  Created by Huy Trinh Duc on 6/19/20.
//  Copyright © 2020 Parker Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var data = [ModelTest]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib.init(nibName: "BubbleChatTableViewCell", bundle: nil), forCellReuseIdentifier: "BubbleChatTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        data.append(.init(name: "Mr Beast", comment: "Quang Hải sút quả dã man thế", type: .normal))
        data.append(.init(name: "Hiền Hồ", comment: "Ông kia nói chuyện liên quan vãi vậy, Quang Hải nào ở đây =))", type: .normal))
        data.append(.init(name: "Thiên Trang", comment: "@Hiền Hồ lag stream =))", type: .normal))
        data.append(.init(name: "Sport5", comment: "15 phút nghỉ giữa giờ sẽ có minigame cùng nhiều phần quà hấp dẫn, mọi người đừng bỏ lỡ nhé.", type: .normal))
        data.append(.init(name: "Huymemes", comment: "", type: .sticker))
        data.append(.init(name: "Ngân Sát Thủ", comment: "Anh em em vỗ tay", type: .giftSticker))
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BubbleChatTableViewCell", for: indexPath) as! BubbleChatTableViewCell
        cell.configCell(data: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
