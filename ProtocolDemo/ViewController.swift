//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by Nguyễn Việt on 8/7/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import UIKit



class ViewController: UIViewController,KetQuaViewControllerDelegate {
    
    //MARK: KetQuaViewControllerDelegate
    func onSubmitValueTouched(result: Int) {
        print("resullt = \(result)")
    }
    
    
    @IBOutlet weak var mNhapBText: UITextField!
    @IBOutlet weak var mNhapAText: UITextField!
    @IBOutlet weak var mTinhTongLb: UILabel!
    
    
    @IBAction func onKetQuaButton(_ sender: UIButton) {
        if checkValid() == false {
            
                let alert = UIAlertController(title: "ThongBao", message: "Nhap Dung dinh dang", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {(action) in } ))
                self.present(alert, animated: true, completion: nil)
            
        } else{
          
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "KetQuaViewController") as! KetQuaViewController
        controller.mDelegate = self
            controller.mResult = Int(mNhapAText.text!)! + Int(mNhapBText.text!)!
            self.navigationController?.pushViewController(controller, animated: true)
        
        }
    }
    
    func checkValid() -> Bool {
        var result = true
                if (mNhapAText.text == ""){
                    result = false
                } else if (mNhapBText.text == ""){
                    result = false
                } 
        
        
        return result
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toACVSeuge" {
           print("hello")
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

