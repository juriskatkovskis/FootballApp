//
//  EnglandViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit

class EnglandViewController: UIViewController {
    var Teams: [Datum] = []
    

    @IBOutlet weak var englandTableView: UITableView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EnglandNetworkManager.fetchData { Teams in
            self.Teams = Teams
            DispatchQueue.main.async {
            self.englandTableView.reloadData()
            }
        }
    }


}
extension EnglandViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Teams.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailedEnglandViewController") as? DetailedEnglandViewController{
            let item = Teams[indexPath.row]
                    vc.englandItem = item
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
      
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EnglandTableViewCell", for: indexPath) as? EnglandTableViewCell else {return UITableViewCell()}
        
        
        let item = Teams[indexPath.row]
        cell.englandTeamLbl.text = item.name
      cell.englandTeamImg.sd_setImage(with: URL(string: item.logo ?? ""))
        
        
        
        return cell

        
    }
    
    
    
}

