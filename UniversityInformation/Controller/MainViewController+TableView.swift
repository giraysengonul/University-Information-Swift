//
//  MainViewController+TableView.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 5.05.2023.
//

import UIKit
private let reuseIdentifier = "cell"
extension MainViewController{
    
    func registerTableView(){
        tableView.register(MainViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.separatorStyle = .none
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MainViewCell
        cell.viewModel = viewModel.createMainCellViewModel(model: self.dataResult[indexPath.row])
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
