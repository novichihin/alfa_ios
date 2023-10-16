//
//  ViewController.swift
//  test_ios
//
//  Created by Степан Новичихин on 02.10.2023.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: {data, responce, error in
            guard
                let data = data,
                let responce = responce,
                error == nil
            else { return }
            let str = String(data: data, encoding: .utf8)
            print("Получение данных: \(str ?? "")")
        }).resume()
        
    }
}

