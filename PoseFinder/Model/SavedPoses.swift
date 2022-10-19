//
//  SavedPoses.swift
//  PoseFinder
//
//  Created by Cédric Debroux on 19/10/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation


class SavedPoses {
    static let shared = SavedPoses()
    
    var poses = [String: [Pose]]()
    var selected: String?
}
