//
//  ViewController.swift
//  Counter
//
//  Created by 권순욱 on 2/23/25.
//

import UIKit

class ViewController: UIViewController {

    var count = 0 {
        didSet {
            label.text = "\(count)"
            
            // + 버튼 활성화/비활성화
            if count == countRange.upperBound {
                plusButton.isEnabled = false
            } else {
                plusButton.isEnabled = true
            }
            
            // - 버튼 활성화/비활성화
            if count == countRange.lowerBound {
                minusButton.isEnabled = false
            } else {
                minusButton.isEnabled = true
            }
        }
    }
    
    let countRange: ClosedRange<Int> = -10...10
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "\(count)"
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        if count < countRange.upperBound {
            count += 1
        }
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        if count > countRange.lowerBound {
            count -= 1
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        count = 0
    }
}
