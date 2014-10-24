//
//  HighlightingTextView.swift
//  表格动画手势示例
//
//  Created by Semper Idem on 14-10-22.
//  Copyright (c) 2014年 星夜暮晨. All rights reserved.
//

import UIKit

// 本类用于调整单元格被选中后文本的颜色（黑(未选中)/白(选中)）
class HighlightingTextView: UITextView {
    
    func setHighlighted(highlight: Bool) {
        // 调整高亮状态下的文本颜色
            self.textColor = highlight ? UIColor.whiteColor() : UIColor.blackColor()
    }
}