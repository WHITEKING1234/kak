//
//  ViewController.swift
//  kak
//
//  Created by Mac on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var table: UITableView!
    let sectin:[String] = ["A","B","C","V","E"]
    var name: [[String]] = [
        ["ALMATINKA MAGISTARL/2","Arabaeva34","Arhabeshik2/32"],
        ["Boconbaeva2/3","babanova32","Bore12"],
        ["Cyiprocpect56","Chyilamedin5","CECR"],
        ["Voleter54"],
    ["ebroimova51"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Tor")
        
        
      title = "ADRESA"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    
    
    
}
extension ViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectin.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tor", for: indexPath)
        cell.textLabel?.text = name[indexPath.section][indexPath.row]
        cell.textLabel?.font = UIFont.systemFont (ofSize: 27,weight: .bold)
        print(indexPath)
        return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectin[section]
    }
}




