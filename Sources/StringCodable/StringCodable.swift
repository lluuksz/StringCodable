// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

extension String {
    
    public func base64Encoded() -> String? {
       data(using: .utf8)?.base64EncodedString()
    }
     
    public func base64Decoded() -> String? {
       guard let data = Data(base64Encoded: self) else { return nil }
       
        return String(data: data, encoding: .utf8)
    }
    
}
