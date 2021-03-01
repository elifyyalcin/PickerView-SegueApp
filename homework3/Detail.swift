//
//  Detail.swift
//  homework3
//
//  Created by Elif Yalçın on 20.01.2021.
//

import UIKit

class Detail: UIViewController {
    
    var item = Coffee()

    @IBOutlet weak var txtdPrice: UILabel!
    @IBOutlet weak var txtdDetail: UITextView!
    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var txtdName: UILabel!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        imgDetail.image = item.image
        txtdName.text = item.name
        txtdPrice.text = "\(item.price)₺"
        txtdDetail.text = item.detail
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
