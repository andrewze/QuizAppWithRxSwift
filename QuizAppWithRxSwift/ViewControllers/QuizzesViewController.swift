//
//  QuizzesViewController.swift
//  QuizAppWithRxSwift
//
//  Created by DEL on 07.11.2018.
//  Copyright © 2018 DEL. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import Moya

class QuizzesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var provider: MoyaProvider<Endpoint>!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        providerSetup()
        viewModelSetup()
        tableViewSetup()
    }
    
    func providerSetup() {
        provider = MoyaProvider<Endpoint>()
    }
    
    func tableViewSetup() {
        
    }
    
    func viewModelSetup() {
        
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
