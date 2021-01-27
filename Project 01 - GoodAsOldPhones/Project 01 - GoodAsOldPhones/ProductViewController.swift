//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by minii on 2021/01/26.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productName.text = product?.name
        
        if let imageName = product?.fullscreenImageName {
        productImage.image = UIImage(named: imageName)
        }
    }
}
