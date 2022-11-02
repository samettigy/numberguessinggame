//
//  ViewController.swift
//  SayıTahminUygulaması
//
//  Created by Samet TIG on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtTahminEdilecekSayi: UITextField!
    
    @IBOutlet weak var imgKaydet: UIImageView!
    
    
    @IBOutlet weak var btnKaydet: UIButton!
    
    
    @IBOutlet weak var txtTahminSayisi: UITextField!
    
    
    @IBOutlet weak var btnDene: UIButton!
    
    
    @IBOutlet weak var lblSonuc: UILabel!
    
    
    @IBOutlet weak var imgYildiz1: UIImageView!
    
    
    @IBOutlet weak var imgYildiz2: UIImageView!
    
    @IBOutlet weak var imgYildiz3: UIImageView!
    
    
    @IBOutlet weak var imgYildiz4: UIImageView!
    
    @IBOutlet weak var imgYildiz5: UIImageView!
    
    @IBOutlet weak var imgTahminDurum: UIImageView!
    
    
    var yildizlar :  [UIImageView] = [UIImageView]()
    
    let maxDenemeSayisi = 5
    var denemeSayisi = 0
    var hedefSayi = -1
    var oyunBasarili : Bool = false
    
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yildizlar = [imgYildiz1,imgYildiz2,imgYildiz3,imgYildiz4,imgYildiz5]
        
        imgKaydet.isHidden = true
        imgTahminDurum.isHidden = true
        btnDene.isEnabled = false
        txtTahminEdilecekSayi.isSecureTextEntry = true
        lblSonuc.text = ""
        
    }
    
    
    @IBAction func btnKaydetClicked(_ sender: Any) {
        
        imgKaydet.isHidden = false
        if let t = Int(txtTahminEdilecekSayi.text!) {
            hedefSayi = t
            btnDene.isEnabled = true
            txtTahminEdilecekSayi.isHidden = false
            btnKaydet.isEnabled = false
            imgKaydet.image = UIImage(named: "onay")
        } else {
            imgKaydet.image = UIImage(named: "hata")
        }
        
    }
    
    @IBAction func btnDeneClicked(_ sender: Any) {
        
        if oyunBasarili == true || denemeSayisi > maxDenemeSayisi {
            return
        }
        
        if let girilenSayi = Int(txtTahminSayisi.text!) {
            
            denemeSayisi += 1
            yildizlar[denemeSayisi-1].image = UIImage(named: "beyazYildiz")
            
            
        }  else {
            
            
            
        }
        
    }
    
    

}

