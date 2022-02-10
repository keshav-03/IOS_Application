//
//  ViewController.swift
//  ViewSnapKit
//
//  Created by KD on 03/02/22.
//

import UIKit
import SnapKit
import XCTest

class ViewController: UIViewController {
    
    lazy var redSquareView = UIView(frame: .zero)
    lazy var greenSquareView = UIView(frame: .zero)
    lazy var blueSquareView = UIView(frame: .zero)
    lazy var yellowSquareView = UIView(frame: .zero)
    lazy var orangeSquareView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        redSquareView.backgroundColor = .red
        greenSquareView.backgroundColor = .green
        blueSquareView.backgroundColor = .blue
        yellowSquareView.backgroundColor = .yellow
        orangeSquareView.backgroundColor = .orange
        
        [redSquareView, greenSquareView, blueSquareView, yellowSquareView, orangeSquareView].forEach { box in
            view.addSubview(box)
        }
        
        //top-left
        redSquareView.snp.makeConstraints{ make in
            make.width.height.equalTo(boxWidth)
//            make.top.leading.equalToSuperview()
//            make.leading.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(40)
        }
        
        //top - right
        greenSquareView.snp.makeConstraints{ make in
            make.width.height.equalTo(boxWidth)
//            make.top.trailing.equalToSuperview()
//            make.trailing.centerY.equalToSuperview()
            make.top.trailing.equalToSuperview().inset(80)
        }
        
        //bottom- left
        blueSquareView.snp.makeConstraints{ make in
            make.width.height.equalTo(boxWidth)
            make.bottom.leading.equalToSuperview()

        }
        
        //bottom-right
        yellowSquareView.snp.makeConstraints{ make in
            make.width.height.equalTo(boxWidth)
            make.bottom.trailing.equalToSuperview()
        }
        
        orangeSquareView.snp.makeConstraints{ make in
            make.width.height.equalTo(boxWidth)
//            make.leading.trailing.equalToSuperview()
//          make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.centerY.centerX.equalToSuperview()
        }
        
        //animate the view
        view.layoutIfNeeded()
        UIView.animate(withDuration: 0.5, delay: 1.0, options: .beginFromCurrentState) {
            self.redSquareView.snp.updateConstraints{ make in
                make.top.equalToSuperview().offset(200)
            }
            self.view.layoutIfNeeded()
        }
    }

}

