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
    
    var currentLight: TrafficState = .notWorking
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLightViews()
    }
    
    @IBAction func trafficButtonDidTapped() {
        setupLightViews()
        trafficSwitcher(for: currentLight)
    }
    
    private func setupLightViews() {
        for view in lightViews {
            view.layer.cornerRadius = view.frame.height / 2
            view.layer.opacity = 0.35
        }
    }
    
    private func trafficSwitcher(for state: TrafficState) {
        switch state {
        case .notWorking:
            trafficButton.setTitle("NEXT", for: .normal)
            currentLight = .red
            lightViews[0].layer.opacity = 1
        case .red:
            currentLight = .yellow
            lightViews[1].layer.opacity = 1
        case .yellow:
            currentLight = .green
            lightViews[2].layer.opacity = 1
        case .green:
            currentLight = .red
            lightViews[0].layer.opacity = 1
        }
    }
}

extension ViewController {
    enum TrafficState {
        case notWorking
        case red
        case yellow
        case green
    }
}

