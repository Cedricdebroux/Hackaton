//
//  TableViewController.swift
//  PoseFinder
//
//  Created by Quentin Bona on 18/10/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    var ghostList: [Ghost] = []
    

    @IBOutlet var myTabView: UITableView!
    @IBAction func addNewGhost(_ sender: Any) {
        if let addVC =  storyboard?.instantiateViewController(withIdentifier: "AddPoseView")as? AddPoseView{
            navigationController?.pushViewController(addVC, animated: true)
            
            
            //present(addVC,animated: true)
           
          
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myTabView.delegate = self
        myTabView.dataSource = self
        myTabView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
       
        
        // Do any additional setup after loading the view.
    }
    

   

}

extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ghostList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
                
        else{
            fatalError()
        }
        
        
        cell.setupCell(model: ghostList[indexPath.row])
        return cell
    }
    
    
}
