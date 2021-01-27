//
//  ProductsTableViewController.swift
//  Project 01 - GoodAsOldPhones
//
//  Created by minii on 2021/01/25.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    
    @IBOutlet var tableListView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct" {
            if let cell = sender as? UITableViewCell,
            let indexPath = self.tableListView.indexPath(for: cell),
            let detailvc = segue.destination as? ProductViewController {
            detailvc.product = productList[indexPath.row]
            }
        }
    }
}





    // MARK: - Table view data source
extension ProductsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        
        cell.textLabel?.text = productList[indexPath.row].name
        if let imageName = productList[indexPath.row].cellImageName {
        cell.imageView?.image = UIImage(named: imageName)
        }
        return cell
    }
}
