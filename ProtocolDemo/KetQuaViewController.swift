//
//  KetQuaViewController.swift
//  ProtocolDemo
//
//  Created by Nguyễn Việt on 8/7/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import Foundation
import UIKit

protocol KetQuaViewControllerDelegate {
    func onSubmitValueTouched(result: Int) -> Void
}

class KetQuaViewController: ViewController {
    var mDelegate : KetQuaViewControllerDelegate?
    
    var mResult:Int = 0
    
   
    
    @IBOutlet weak var mResultLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        mResultLabel.text = String(mResult)
    }
    
    
    @IBAction func onApplyTouched(_ sender: UIButton) {
        mDelegate?.onSubmitValueTouched(result: Int(mResultLabel.text!)!)
    }
    
}
