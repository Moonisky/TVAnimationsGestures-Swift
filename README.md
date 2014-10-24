#TVAnimationsGestures-Swift
==========================

这是一个简单的可展开可合并的表视图，用Swift语言编写

本项目展示了如何使用`动态`来展开或收缩头部表视图的单元格，每节代表了一个`表演场次`，每个单元格包含了这个表演场次的`语录`。同样，这个表视图也能够响应用户的手势操作：
* `UITapGestureRecognizer`点击手势来展开或收缩头部表视图
* `UIPinchGestureRecognizer`缩放手势允许用户改变单元格的高度
* `UILongPressGestureRecognizer`长按手势允许用户按住表视图的单元格来弹出一个发送邮件的小按钮以便用户将语录通过邮件与好友分享

## 主要文件

### TableViewController.swift
表视图控制器，显示表演场次集合中的所有语录。这个控制器支持展开或收缩头部表视图。每个大的单元格由`SectionInfo`对象数组对应。

### SectionInfo.swift
section对象，包含了关于该section的一系列有用的信息：
 * 该section是否打开
 * section上的头部表格视图
 * section上的模型对象——由一个字典对象包含着单个表演场次以及场次名称
 * section上的每一个单元格的高度

### SectionHeaderView.swift
一个显示section头部表格视图的视图定义文件，支持展开或收缩头部表格视图

### QuoteCell.swift
一个显示语录信息的单元格

### AppDelegate.swift
系统默认的App的委托，不必关心

### Play.swift
一个简单的模型文件，包含了表演场次的名称和语录集合

### Quotation.swift
一个简单的模型文件，包含了语录信息、角色名、出场顺序、场次等等

### PlaysAndQuotations.plist
一个包含了语录信息的plist文件。数据被安排在名为“plays”的数组当中，每个表演场次都由以下键值组成的字典构成：
"playName": 表演场次的名称
"quotations" 一个存储有语录信息的数组

每个语录由以下键值组成的字典构成：
"act" :表演场次中，语录出现的顺序
"scene"：表演场次中，语录出现的场景
"character"：道出该条语录的角色名
"quotation"：语录信息

----------------------------------------------------------------------------------------------------------------------------
Copyright (R) 2014 星夜暮晨 All rights reserved