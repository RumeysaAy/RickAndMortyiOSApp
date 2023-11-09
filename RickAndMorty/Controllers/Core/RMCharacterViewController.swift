//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Rumeysa Ay on 8.11.2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        
         let request = RMRequest(
             endpoint: .character,
             queryParameters: [
                 URLQueryItem(name: "name", value: "rick"),
                 URLQueryItem(name: "status", value: "alive")
             ]
         )
         
         print(request.url)
         
        RMService.shared.execute(request,
                                 expecting: RMCharacter.self){
            result in
            
            /*
             switch result {
             case .success(RMCharacter)
             */
            }
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
