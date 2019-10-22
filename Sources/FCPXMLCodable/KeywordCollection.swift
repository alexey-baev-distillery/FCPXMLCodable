//
//  KeywordCollection.swift
//
//  Copyright (c) 2019 Todd Kramer (https://www.tekramer.com)
//

import XMLCoder

public struct KeywordCollection: XMLRepresentable {

    public var name: String

    public init(name: String) {
        self.name = name
    }

}

extension KeywordCollection: DynamicNodeEncoding {

    /// :nodoc:
    public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        return .attribute
    }

}