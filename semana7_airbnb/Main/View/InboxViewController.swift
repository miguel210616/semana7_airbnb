//
//  InboxViewController.swift
//  semana7_airbnb
//
//  Created by MAC09 on 10/11/21.
//

import UIKit

class InboxViewController: UIViewController {
    
    @IBOutlet weak var segmentOptions: UISegmentedControl!
    
    @IBOutlet weak var tableView: UITableView!
    
    let people: [String] = ["Jassyra Espinoza","Kriss Galiamo","Miguel Inga","Emanuel Ore", "Percy Herrera", "Anthony Quito"]
    let messages: [String] = ["Hola que tal? 🤪","Manitoo 🦊","Una semana mas profe","Hoy hay clases", "Vamos a dotear", "Run Run 🦊"]
    let notifications: [String] = ["Solicitud de amistad","Nuevo acceso detectado"]
    let descriptions: [String] = ["El pepe quiere ser tu friend","Se entro desde una mac 💻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func onClickSegment(_ sender: Any) {
        //el action me sirve para ejecutar la action del segment
        tableView.reloadData()
    }
    
//puedo crear un extension de mi controlador
}

extension InboxViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if segmentOptions.selectedSegmentIndex == 0 {
            return people.count
        }else{
            return notifications.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        if segmentOptions.selectedSegmentIndex == 0 {
            cell.textLabel?.text = people[indexPath.row]
            cell.detailTextLabel?.text = messages[indexPath.row]
        }else {
            cell.textLabel?.text = notifications[indexPath.row]
            cell.detailTextLabel?.text = descriptions[indexPath.row]
        }
        return cell
    }
    
}


