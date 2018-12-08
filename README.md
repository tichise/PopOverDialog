### PopOverDialog

PopOverDialog is a PopOver style dialog view.

Please use it when you want to display confirmation screen without screen transition.

### Image

#### iPhone
<img src="https://user-images.githubusercontent.com/43707/39987592-2be647f6-57a0-11e8-9fd7-2f728836df64.png" width="400px">

### Examples

#### for Swift
```
import UIKit
import PopOverDialog

class SampleViewController: UIViewController, UIAdaptivePresentationControllerDelegate {

    @IBOutlet weak var baseTextView:UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()

        let barButtonItem:UIBarButtonItem = UIBarButtonItem(title: "menu", style: .plain, target: self, action: #selector(SampleViewController.openDialog(sender:)))
        self.navigationItem.rightBarButtonItem = barButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @objc public func openDialog(sender:UIBarButtonItem) {

        let popOverDialogViewController = PopOverDialogViewController.instantiate()
        popOverDialogViewController.setButtonText("OK")
        popOverDialogViewController.setMessage("Do you want to send mail?")
        popOverDialogViewController.setSubMessage("When you press OK, the mail will be sent immediately.")

        popOverDialogViewController.setShowsVerticalScrollIndicator(true)
        popOverDialogViewController.setSeparatorStyle(UITableViewCellSeparatorStyle.singleLine)
        popOverDialogViewController.popoverPresentationController?.barButtonItem = sender
        popOverDialogViewController.preferredContentSize = CGSize(width: 300, height:110)
        popOverDialogViewController.presentationController?.delegate = self

        popOverDialogViewController.setMessageFont(UIFont.systemFont(ofSize: 16))
        popOverDialogViewController.setSubMessageFont(UIFont.systemFont(ofSize: 12))
        popOverDialogViewController.setButtonTextFont(UIFont.systemFont(ofSize: 14))
        popOverDialogViewController.setButtonTextColor(UIColor.black)

        popOverDialogViewController.completionHandler = { () -> Void in

        }
        present(popOverDialogViewController, animated: true, completion: nil)
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }

    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
}
```

### Installation (CocoaPods)
`pod PopOverDialog`

### CocoaPods URL
- [PopOverDialog on CocoaPods.org](https://cocoapods.org/pods/PopOverDialog)

### License
PopOverDialog is available under the MIT license. See the LICENSE file for more info.
