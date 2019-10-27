//
//  TextBlob.swift
//  SkiaKit
//
//  Created by Miguel de Icaza on 10/18/19.
//  Copyright © 2019 Miguel de Icaza. All rights reserved.
//

import Foundation

public class TextBlob {
    var handle: OpaquePointer
    
    init (handle: OpaquePointer)
    {
        self.handle = handle
    }
    
    public func getUniqueId () -> UInt32
    {
        sk_textblob_get_unique_id(handle)
    }
    
    deinit {
        sk_textblob_unref(handle)
    }
}
