//
//  ViewController.swift
//  Toast
//
//  Created by tianjing on 2017/2/12.
//  Copyright © 2017年 tianjing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var showMessageButton:UIButton = {
        let button:UIButton = UIButton(type: .custom)
        button.frame = CGRect(x: 20, y: 50, width: 80, height: 40)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setTitle("showMessage", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        return button;
    }()
    
    private lazy var showLoadingButton:UIButton = {
        let button:UIButton = UIButton(type: .custom)
        button.frame = CGRect(x: 20, y: 110, width: 80, height: 40)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setTitle("showLoading", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(showLoading), for: .touchUpInside)
        return button;
    }()
    
    private lazy var hideLoadingButton:UIButton = {
        let button:UIButton = UIButton(type: .custom)
        button.frame = CGRect(x: 140, y: 110, width: 80, height: 40)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setTitle("hideLoading", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(hideLoading), for: .touchUpInside)
        return button;
    }()

    
    private lazy var showBlockLoadingButton:UIButton = {
        let button:UIButton = UIButton(type: .custom)
        button.frame = CGRect(x: 20, y: 200, width: 80, height: 40)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setTitle("showBlockLoading", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(showBlockLoading), for: .touchUpInside)
        return button;
    }()

    
    private lazy var hideBlockLoadingButton:UIButton = {
        let button:UIButton = UIButton(type: .custom)
        button.frame = CGRect(x: 140, y: 200, width: 80, height: 40)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setTitle("hideBlockLoading", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(hideBlockLoading), for: .touchUpInside)
        return button;
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(showMessageButton)
        view.addSubview(showLoadingButton)
        view.addSubview(hideLoadingButton)
        view.addSubview(showBlockLoadingButton)
        view.addSubview(hideBlockLoadingButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showMessage() {
        //toast 加在window上
        Toast.showToast("3s后消失", image: nil, duration: 3)
        
        //toast 加在view上
        //view.showToast("3s后消失", image: nil, duration: 3)
    }
    
    func showLoading() {
        Toast.showLoading("加载中，调用hide方法后消失", block: false);
        
        //view.showLoading("加载中，调用hide方法后消失", block: false);
    }
    
    func hideLoading() {
        Toast.hideLoading()
    }
    
    func showBlockLoading() {
        Toast.showLoading("加载中，遮挡界面，界面不可交互", block: true);
    }
    
    // 被遮挡 不起作用
    func hideBlockLoading() {
       Toast.hideLoading()
    }

}

