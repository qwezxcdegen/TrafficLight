//
//  ViewController.swift
//  TrafficLight
//
//  Created by Степан Фоминцев on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightViews: [UIView]!
    @IBOutlet weak var trafficButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLightViews()
    }
    
    @IBAction func trafficButtonDidTapped() {
        trafficButton.setTitle("NEXT", for: .normal)
    }
    
    private func setupLightViews() {
        for view in lightViews {
            view.layer.cornerRadius = view.frame.height / 2
            view.layer.opacity = 0.35
        }
        
    }

}

