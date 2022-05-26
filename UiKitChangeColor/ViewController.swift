//
//  ViewController.swift
//  UiKitChangeColor
//
//  Created by Max on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    @IBOutlet weak var labelAlpha: UILabel!
    
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        viewColor.layer.cornerRadius = viewColor.frame.width / 2
        
        redSlider.value = 10
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        
        greenSlider.value = 60
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        
        blueSlider.value = 200
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 100
        alphaSlider.value = 100
        
                
        setViewColor()

        
    }

    private func setViewColor(){
        let colorView = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: CGFloat(alphaSlider.value)/100)
        self.viewColor.backgroundColor = colorView
    }
    
    @IBAction func changeSliderAction(_ sender: UISlider) {
        setViewColor()
        
        switch sender.tag {
        case 0:
            labelRed.text = getValueSlider(from: sender)
        case 1:
            labelGreen.text = getValueSlider(from: sender)
        case 2:
            labelBlue.text = getValueSlider(from: sender)
        case 3:
            labelAlpha.text = getValueSlider(from: sender)
        default: break
        }
    }
    
    @IBAction func switchDarkTheme(_ sender: UISwitch) {
    
    }
    private func getValueSlider(from slider: UISlider) -> String {
        return String(Int(slider.value))
    }
    
}

