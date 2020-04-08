//
//  ContentView.swift
//  Test1
//
//  Created by  Артем Куртуков on 20.02.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {

        super.viewDidLoad()

}

    @IBAction func showMessage(sender: UIButton) {
        var emojiDict = ["🚀": "Рокета", "🧑‍💻": "Кодинг", "🥑": "Авокадо", "📱": "Смартфон"]
        let wordToLookup = "🚀"
        var meaning = emojiDict[wordToLookup]
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            meaning = emojiDict[wordToLookup]
        }
        
        let alertController = UIAlertController(title: "Эмодзи означает", message: meaning, preferredStyle: UIAlertController.Style.alert)

        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
