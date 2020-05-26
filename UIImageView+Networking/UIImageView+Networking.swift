//
//  UIImageView+Networking.swift
//  Example
//
//  Created by German Velibekov on 26/05/2020.
//  Copyright © 2020 german. All rights reserved.
//

import UIKit

extension UIImageView: NetworkExtended {}

public extension NetworkExtension where ExtendedType == UIImageView {
    func image(from url: URL) {
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.center = CGPoint(x: self.type.frame.size.width  / 2,
                                           y: self.type.frame.size.height / 2)
        self.type.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        URLSession.shared.dataTask(with: url) {
            (data, _, _) in
            DispatchQueue.main.async {
                activityIndicator.stopAnimating()
                guard let data = data, let image = UIImage(data: data) else {
                    let image = UIImage(named: "no-image",
                                        in: Bundle.main,
                                        compatibleWith: nil)
                    self.type.image = image
                    return
                }
                self.type.image = image
            }
        }.resume()
    }
}
