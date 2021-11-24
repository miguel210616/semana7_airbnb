//
//  WishListViewController.swift
//  semana7_airbnb
//
//  Created by MAC09 on 10/11/21.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    let places:[String]=["Mancora","Acapulco","Miami","Cancun"]
    let datesToTravel: [String] = ["4-6 Dic","11-14 Nov", "1-5 Ene", "3-7 Abr"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp(){
        tableView.delegate = self
        tableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func rezizeImage(name:String, for size:CGSize) -> UIImage {
        let image = UIImage(named:name)
        
        let renderer = UIGraphicsImageRenderer(size:size)
        return renderer.image{ (context) in
            image?.draw(in: CGRect(origin: .zero, size: size))
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text=places[indexPath.section]
        cell.detailTextLabel?.text=datesToTravel[indexPath.section]
        //cell.imageView?.translatesAutoresizingMaskIntoConstraints = true
        //cell.imageView?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //cell.imageView?.widthAnchor.constraint(equalToConstant: 50).isActive = true
        //forma a las fotos
        cell.imageView?.layer.cornerRadius=8.0
        cell.imageView?.layer.masksToBounds=true
        cell.imageView?.contentMode = .scaleAspectFit
        
        if indexPath.section == 0{
            cell.imageView?.image = UIImage(named: "mancora")
        }else if indexPath.section == 1{
            cell.imageView?.image = UIImage(named: "acapulco")
        }else if indexPath.section == 2{
            cell.imageView?.image = UIImage(named: "miami")
        }else {
            cell.imageView?.image = UIImage(named: "cancun")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }
}
