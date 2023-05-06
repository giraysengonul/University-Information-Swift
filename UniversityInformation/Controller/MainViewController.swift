//
//  MainViewController.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 5.05.2023.
//

import UIKit
class MainViewController: UITableViewController {
     // MARK: - Properties
    var viewModel = MainViewModel()
    var dataResult: [University] = []{
        didSet{ tableView.reloadData() }
    }
     // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}
 // MARK: - Helpers
extension MainViewController{
    private func configureView(){
        view.backgroundColor = .red
    }
    func setup(){
        configureView()
        registerTableView()
        getData()
    }
    func getData(){
        viewModel.getData {[weak self] result in
            guard let self = self else{ return }
            guard let resultdata = result else{ return }
            self.dataResult = resultdata
        }
    }
}
