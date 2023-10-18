//
//  ThemeViewController.swift
//  DarkThemeApp
//
//  Created by Arkadijs Makarenko on 18/10/2023.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var darkButton: UIButton!
    @IBOutlet weak var folderButton: UIBarButtonItem!
#warning("need to have IBOutlet for Item button and put on leading side")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ThemeViewController func viewDidLoad")
        darkButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        print("darkButtonTapped")
        view.backgroundColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        darkButton.setTitle("Dark Theme off", for: .normal)
        darkButton.setTitleColor(UIColor.black, for: .normal)
        darkButton.tintColor = UIColor.white
        
#warning("Dark Theme off : Dark Theme on")
    }
    
    @IBAction func folderTaped(_ sender: Any) {
        basicAlert(title: "My Folder", message: "This is my item button!")
    }
#warning("need to have IBAction for Item button and logic to present actionSheet")
    
    
}

extension UIViewController {
    
    func basicAlert(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
}

