//
//  FirstViewController.swift
//  vazifa 7.12
//
//  Created by Mac on 07/12/22.
//

import UIKit

class FirstViewController: UIViewController {

    var people = [Person(personimage: "person", name: "Baxtiyor", mainimage: "home"),
                  Person(personimage: "person.fill", name: "Isroil", mainimage: "Hause"),
                  Person(personimage: "person.cirle", name: "Jahongir", mainimage: "hold") ]
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Baxtiyor"
        tableview.dataSource = self
        tableview.delegate = self
        tableview.rowHeight = UITableView.automaticDimension
        tableview.register(.init(nibName: "CellTableViewCell", bundle: nil), forCellReuseIdentifier: "CellTableViewCell")

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
extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell", for: indexPath) as!
        CellTableViewCell
        cell.personImage.image = UIImage(systemName: people[indexPath.row].personimage)
        cell.personName.text = people[indexPath.row].name
        cell.mainImage.image = UIImage(named: people[indexPath.row].mainimage)
        
        return cell
    }
    
    
}
