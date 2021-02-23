//
//  viewInteractor.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import Foundation
import UIKit

class viewInteractor : viewInteractorInputProtocol {
    
    weak var presenter: viewInteractorOutputProtocol?
    
    func callAPIonDispatchGroup() {
        
        let dispatchGroup : DispatchGroup = DispatchGroup()
        dispatchGroup.enter()
        
        fetchImage { (_, _) in
            print("here 111 called")
            dispatchGroup.leave()
        }
        dispatchGroup.enter()
        
        fetchImage { (_, _) in
            print("here 222 called")
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        
        fetchImage { (_, _) in
            print("here 333 called")
            dispatchGroup.leave()
        }
        
        dispatchGroup.notify(queue: .main) { [weak self] in
            print("All APIS call is completed")
            self?.presenter?.success()
        }
    }
    
    func fetchImage(completion: @escaping (UIImage?, Error?) -> ()) {
        guard let url = URL(string: "https://letsbuildthatapp-videos.s3-us-west-2.amazonaws.com/5a90871e-408a-46da-a43c-210348a67082") else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            completion(UIImage(data: data ?? Data()), nil)
        }.resume()
    }
}
