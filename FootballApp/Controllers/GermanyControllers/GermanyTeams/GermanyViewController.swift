//
//  GermanyViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import UIKit

class GermanyViewController: UIViewController, UISearchBarDelegate {
    
    
    var Teams: [Datum] = []

    @IBOutlet var germanyTableView: UITableView!
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GermanyNetworkManager.fetchData { germanyTeam in
            self.Teams = germanyTeam
            DispatchQueue.main.async {
            self.germanyTableView.reloadData()
                
           //     self.germanyTeamSearch.delegate = self
           //     self.filteredData = Teams
            }
        }
    }


}
extension GermanyViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Teams.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailedGermanyViewController") as? DetailedGermanyViewController{
            let item = Teams[indexPath.row]
                    vc.germanyItem = item
           // vc.img = UIImage(named: logo.indexPath.row)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
      
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GermanyTableViewCell", for: indexPath) as? GermanyTableViewCell else {return UITableViewCell()}
        
        
        let item = Teams[indexPath.row]
        cell.germanyTeamLbl.text = item.name
      cell.germanyTeamImg.sd_setImage(with: URL(string: item.logo ?? ""))
        
        
        
        return cell

        
    }
    
    
 //   func germanyTeamSearch(germanyTeamSearch: UISearchBar, textDidChange searchText: String?) {
        

        }
        
        
    
    
    
    


