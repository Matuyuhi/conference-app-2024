import Foundation
import CommonComponents
import SwiftUI

public enum FloorMap {
    case first
    case firstBasement
}

extension FloorMap: Selectable {
    public var id: Self { self }

    public var title: String {
        switch self {
        case .first: "1F"
        case .firstBasement: "B1F"
        }
    }
}

extension FloorMap {
    var image: ImageResource {
        switch self {
        case .first: .map1F
        case .firstBasement: .mapB1F
        }
    }
}
