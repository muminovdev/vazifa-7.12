//
//  FirstViewController.swift
//  vazifa 7.12
//
//  Created by Javlonbek Dev on 09/12/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func TableTap(_ sender: UIButton) {
        let vc = TableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ScrollTap(_ sender: Any) {
        let vc = ScrollViewController()
        navigationController?.pushViewController(vc, animated: true)
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
