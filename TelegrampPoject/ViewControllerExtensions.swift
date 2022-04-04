//
//  ViewControllerExtensions.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 30/03/22.
//

import UIKit

extension UIViewController{
    func showMyViewControllerInACustomizedSheet(vc:UIViewController) {
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [ .large()]
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.prefersEdgeAttachedInCompactHeight = true
            sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
            
        }
        present(vc, animated: true, completion: nil)
    }
}
