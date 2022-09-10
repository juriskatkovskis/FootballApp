//
//  GermanyViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import UIKit

class GermanyViewController: UIViewController {
    
    
    var germanyTeam: [Datum] = []
   
    @IBOutlet var germanyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GermanyNetworkManager.fetchData { germanyTeam in
            self.germanyTeam = germanyTeam
            DispatchQueue.main.async {
            self.germanyTableView.reloadData()
            }
        }
    }


}
extension GermanyViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        germanyTeam.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GermanyTableViewCell", for: indexPath) as? GermanyTableViewCell else {return UITableViewCell()}
        
        
        let item = germanyTeam[indexPath.row]
        cell.germanyTeamLbl.text = item.name
      cell.germanyTeamImg.sd_setImage(with: URL(string: item.logo ?? ""))
        #warning("here2")
        
        
        return cell

        
    }
    
    
    
}

