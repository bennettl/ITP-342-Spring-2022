//
//  ViewController.swift
//  UnsplashDemo
//
//  Created by lee bennett on 3/28/22.
//

import UIKit
import Kingfisher

struct ImageUrl : Codable {
    let raw: String
    
    let full: String
    
    let regular: String
}

struct Image : Codable {
    let id: String
    
    let width: Int
    
    let height: Int
    
    let color: String
        
    let urls: ImageUrl
}

// FYI - Singleton
//class ImageModel{
//    static let shared = ImageModel()
//
//    private init(){}
//}

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadRandomImage()
    }

    @IBAction func refreshDidTapped(_ sender: UIButton) {
        loadRandomImage()
    }
    
    func loadRandomImage(){
        // Synchronous Programming
        let a = 1
        let b = 2
        let c = a + b
        
        // Asynchronous programming
        
        // Make a HTTPS request to Unsplash API to get the data needed to populate the image view
        
        // URL
        print("1")
        let url = URL(string: "https://api.unsplash.com/photos/random")!
        var request = URLRequest(url: url)
        request.addValue("Client-ID XXX", forHTTPHeaderField: "Authorization")
        
        print("2")

        
        URLSession.shared.dataTask(with: request) { data, response, error in
            print("4")

            // When Unsplash API comes back to us, we need to handle the response appropriately
            
            if let error = error{
                print("there is an error, no point in continuing \(error.localizedDescription)")
                return
            }
            
            
            // Decode JSON string into a native Swift object
            let json = String(data: data!, encoding: .utf8)
            let decoder = JSONDecoder()
            do{
                let image = try decoder.decode(Image.self, from: data!)
                print(image.urls.full)
               
                DispatchQueue.main.async {
                    self.imageView.kf.setImage(with: URL(string: image.urls.full)!)
                }
                
            } catch{
                print(error.localizedDescription)
            }
            
            //        imageView.image = /json/..
//            print(json)
        }.resume()
        
        print("3")

    }
    
}

