//
//  ViewController.swift
//  homework3
//
//  Created by Elif Yalçın on 15.01.2021.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    var stArr:[Coffee] = []
    let arr = ["0","1","2","3","4"]
    var selectedCoffee = ""
    
    @IBAction func btnAdd(_ sender: UIButton) {
        
        let title = txtTitle.text!
        let price = Int(txtPrice.text!)
        let detail = txtDetail.text!
        
        var cof = Coffee()
        cof.name = title
        cof.price = price!
        cof.image = UIImage(imageLiteralResourceName: selectedCoffee)
        cof.detail = detail
        
        stArr.append(cof)
        
        print(stArr)
        print(stArr.count)
        
        //add butonuna basildiginda delete islemi yap
        txtTitle.text = ""
        txtPrice.text = ""
        txtDetail.text = ""
        
    }
    
    @IBOutlet weak var txtDetail: UITextView!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let item = arr[row]
        selectedCoffee = item
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        performSegue(withIdentifier: "table", sender: stArr)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if ( segue.identifier == "table" ) {
            let vc = segue.destination as! ProductTableView
            vc.arr = sender as! [Coffee]

        }

    }


}

