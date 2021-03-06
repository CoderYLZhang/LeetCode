//
//  283-moveZeroes.swift
//  LeetCode
//
//  Created by 张银龙 on 2019/10/20.
//  Copyright © 2019 张银龙. All rights reserved.
//

import Cocoa

/*:
 283. 移动零
 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
 
 示例:
 ```
 输入: [0,1,0,3,12]
 输出: [1,3,12,0,0]
 ```
 说明:
 > 必须在原数组上操作，不能拷贝额外的数组
 >
 > 尽量减少操作次数
 
 [简单] https://leetcode-cn.com/problems/move-zeroes/
*/

class MoveZeroes: NSObject {
    
    func moveZeroes(_ nums: inout [Int]) {
        
        // 记录 0 的 index
        var indexOfZero = 0
        
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                nums.swapAt(indexOfZero, i)
                indexOfZero += 1
            }
        }
    }
    
    func moveZeroes_2(_ nums: inout [Int]) {
        // 非 0
        let count = nums.count
        nums = nums.filter { $0 != 0 }
        for _ in nums.count ..< count {
            nums.append(0)
        }
    }
}
