//
//  String+Extensions.swift
//  UlSvPl019MoviesUIKit
//
//  Created by joe on 7/14/24.
//

import Foundation

extension String {
    var urlEncoded: String? {
        return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
}
