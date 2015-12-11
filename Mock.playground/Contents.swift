import UIKit
//import XCTest

class ViewController: UIViewController {

    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var aTextField: UITextField!

    @IBAction func changeLabelFromTextField() {
        aLabel.text = "Hi " + aTextField.text!
    }
}

let vc = ViewController()
vc.aLabel = UILabel()

vc.aLabel

class MockViewController: ViewController {
    let stubbedLabel: UILabel! = UILabel()
    let stubbedTextField: UITextField! = UITextField()

    override var aLabel: UILabel! {
        get {
            return stubbedLabel
        }
        set {
            // Nothing to do here
        }
    }

    override var aTextField: UITextField! {
        get {
            return stubbedTextField
        }
        set {
            // Nothing to do here
        }
    }
}

let mockVC = MockViewController()
mockVC.aTextField
mockVC.aTextField.text = "Andy"
mockVC.changeLabelFromTextField()
mockVC.aLabel.text
// and if this were an actual test
// XCTAssertEquals("Hi Andy", mockVC.aLabel.text)