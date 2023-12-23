import UIKit

func addButton(on view: UIView) -> UIButton {
    let buttonSize = 32
    let rangeX = 30...Int(view.frame.width - 30)
    let rangeY = 80...Int(view.frame.height - 30)
    let buttonX = Int.random(in: rangeX)
    let buttonY = Int.random(in: rangeY)
    let button = UIButton(frame: CGRect(x: buttonX, y: buttonY, width: buttonSize, height: buttonSize))
    button.setTitleColor(.label, for: .normal)
    view.addSubview(button)
    return button
}

