//
//  ViewController.swift
//  MultipleAppIcons
//
//  Created by Ngo Dang tan on 30/12/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let images = ["facebook","uber","google","logo"]
        
        for (index,image) in images.enumerated() {
            let button = UIButton(frame: CGRect(x: 30, y: view.safeAreaInsets.top + 200 + (CGFloat(index) * 130), width: 120, height: 120))
            button.setImage(UIImage(named: image), for: .normal)
            button.tag = index + 1
            button.addTarget(self, action: #selector(didTapAppIcon(_:)), for: .touchUpInside)
            view.addSubview(button)
        }
    }
    @objc private func didTapAppIcon(_ sender:UIButton){
        if sender.tag == 1 {
            UIApplication.shared.setAlternateIconName("facebook") { error in
                guard error == nil else {
                    print("Something went wrong !!")
                    return
                }
                print("Icon updated")
            }
        }else if sender.tag == 2 {
            UIApplication.shared.setAlternateIconName("uber") { error in
                guard error == nil else {
                    print("Something went wrong !!")
                    return
                }
                print("Icon updated")
            }
        }else if sender.tag == 3 {
            UIApplication.shared.setAlternateIconName("google") { error in
                guard error == nil else {
                    print("Something went wrong !!")
                    return
                }
                print("Icon updated")
            }
        }else if sender.tag == 4 {
            UIApplication.shared.setAlternateIconName(nil) { error in
                guard error == nil else {
                    print("Something went wrong !!")
                    return
                }
                print("Icon updated")
            }
        }
    }


}

