//
//  NSImage.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import Foundation

#if os(OSX)

import Cocoa

// Step 1: Typealias UIImage to NSImage
typealias UIImage = NSImage

// Step 2: You might want to add these APIs that UIImage has but NSImage doesn't.
extension NSImage {
    var cgImage: CGImage? {
        var proposedRect = CGRect(origin: .zero, size: size)

        return cgImage(forProposedRect: &proposedRect,
                       context: nil,
                       hints: nil)
    }

    convenience init?(systemName: String) {
        self.init(named: Name(systemName))
    }
}


#endif

