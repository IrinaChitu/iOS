//
//  ViewController.swift
//  CatsGenerator
//
//  Created by Irina Chitu on 12.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catImageView: UIImageView!
    

    //    var catUrl = "https://cdn2.thecatapi.com/images/QCcTOaIQW.jpg"
//
    let catGeneratorUrl = URL(string: "https://api.thecatapi.com/v1/images/search")!
    
    @IBAction func generateCatButton(_ sender: UIButton) {
        getCatImageUrl()
//        print(catImageUrl)
//        catImageView.loadFrom(URLAddress: catImageUrl)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func getCatImageUrl() {
        
        
        let task = URLSession.shared.dataTask(with: catGeneratorUrl) { data, response, error in
            if let data = data {
//                print(data)
                if let cats = try? JSONDecoder().decode([Cat].self, from: data) {
                    let catImageUrl = URL(string: cats[0].url)!
                    self.catImageView.loadFrom(url: catImageUrl)
                } else {
                    print("Invalid Response")
                }
            } else if let error = error {
                print("HTTP Request Failed \(error)")
            }
        }
        
        task.resume()
        
        // response = request from catGeneratorUrl
        // response[0].url
        
//        guard let url = URL(string: URLAddress) else {
//            return
//        }
    }


}

struct Cat: Decodable {
    let id: String
    let url: String
    let width: Int
    let height: Int
}

extension UIImageView {
    func loadFrom(url: URL) {
        DispatchQueue.main.async { [weak self] in
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                        self?.image = loadedImage
                }
            }
        }
    }
}

