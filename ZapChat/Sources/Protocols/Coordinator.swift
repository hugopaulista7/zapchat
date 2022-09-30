//
//  Coordinator.swift
//  ZapChat
//
//  Created by Hugo Paulista on 28/09/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
