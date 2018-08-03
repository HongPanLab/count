//
//  MultiArray+UIImage.swift
//  CrowdCountApi
//
//  Created by Dimitri Roche on 7/5/18.
//  Copyright © 2018 Dimitri Roche. All rights reserved.
//

import Foundation
import UIKit

extension MultiArray {
    /**
     Converts the multi-array to a UIImage.
     
     Use the `offset` and `scale` parameters to put the values from the array in
     the range [0, 255]. The offset is added first, then the result is multiplied
     by the scale.
     
     For example: if the range of the data is [0, 1), use `offset: 0` and
     `scale: 255`. If the range is [-1, 1], use `offset: 1` and `scale: 127.5`.
     */
    public func image(offset: T, scale: T) -> UIImage? {
        if shape.count == 3, let (b, w, h) = toRawBytesRGBA(offset: offset, scale: scale) {
            return UIImage.fromByteArrayRGBA(b, width: w, height: h)
        } else if shape.count == 2, let (b, w, h) = toRawBytesGray(offset: offset, scale: scale) {
            return UIImage.fromByteArrayGray(b, width: w, height: h)
        } else {
            return nil
        }
    }

    /**
     Converts a single channel from the multi-array to a grayscale UIImage.
     
     - Note: The multi-array must have shape (channels, height, width). If your
     array has a different shape, use `reshape()` or `transpose()` first.
     */
    public func image(channel: Int, offset: T, scale: T) -> UIImage? {
        guard shape.count == 3 else {
            print("Expected a multi-array with 3 dimensions, got \(shape)")
            return nil
        }
        guard channel >= 0 && channel < shape[0] else {
            print("Channel must be between 0 and \(shape[0] - 1)")
            return nil
        }

        let height = shape[1]
        let width = shape[2]
        var a = MultiArray<T>(shape: [height, width])
        for y in 0..<height {
            for x in 0..<width {
                a[y, x] = self[channel, y, x]
            }
        }
        return a.image(offset: offset, scale: scale)
    }
}
