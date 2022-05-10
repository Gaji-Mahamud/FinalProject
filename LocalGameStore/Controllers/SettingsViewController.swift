//
//  SettingsViewController.swift
//  LocalGameStore
//
//  Created by Gaji Mahamud on 5/5/22.
//  Copyright © 2022 Rutgers University. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkSwitch()
    }
    
    public func checkSwitch() {
        switchButton.isOn = UserDefaults.standard.bool(forKey: "switchState")
        self.onClickSwitch(switchButton)
    }
    
    @IBAction func onClickSwitch(_ sender: AnyObject) {
        UserDefaults.standard.set(sender .isOn, forKey: "switchState")
        
        if #available(iOS 13.0, *) {
            let appDelegate = UIApplication.shared.windows.first
            if sender.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }
            
            appDelegate?.overrideUserInterfaceStyle = .light
            return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
}
