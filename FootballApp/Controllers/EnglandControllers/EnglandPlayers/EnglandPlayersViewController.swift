//
//  EnglandPlayersViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit

class EnglandPlayersViewController: UIViewController {
    var Players: [Datum] = []


    @IBOutlet weak var englandPlayersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        EnglandPlayersNetworkManager.fetchData { englandPlayers in
            self.Players = englandPlayers
            DispatchQueue.main.async {
            self.englandPlayersTableView.reloadData()
            }
        }
    }

        // Do any additional setup after loading the view.
    }

extension EnglandPlayersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Players.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EnglandPlayersTableViewCell", for: indexPath) as? EnglandPlayersTableViewCell else {return UITableViewCell()}
        
        
      let item = Players[indexPath.row]
        cell.englandPlayersLbl.text = item.firstname
        cell.englandPlayersLastLbl.text = item.lastname!
        cell.englandPlayersAge.text = String (item.age!)
      
        
        
        
        return cell

        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125.0;//Choose your custom row height
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
 
