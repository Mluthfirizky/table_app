//
//  ViewController.swift
//  table view
//
//  Created by m.luthfi rizky ginting on 12/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var provinsi = ["Aceh","Jakarta","Bangka Belitung","Bali","Jawa Barat","Jawa Tengah","Jawa Timur","Banten","Gorontalo","Kalimantan Barat"]

    @IBOutlet weak var provinsitableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        provinsitableView.delegate = self
        provinsitableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, heighForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return provinsi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = provinsitableView.dequeueReusableCell(withIdentifier: "cellProvinsi") as! ProvinsiTableViewCell
        
        let prov = provinsi [indexPath.row]
        cell.provinsiLabel.text = prov
        cell.provinsiImg.image = UIImage(named: prov)
        
        cell.provinsiView.layer.cornerRadius = cell.provinsiView.frame.height / 2
        cell.provinsiImg.layer.cornerRadius = cell.provinsiImg.frame.height / 2
         return cell
            
    }
}
