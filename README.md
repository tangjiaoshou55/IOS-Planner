# 项目名称: IOS-Planner

## 目录
1. [应用概述](#1)
2. [核心功能与需求](#2)
3. [文件结构树状图](#3)
4. [代码实现](#4)
5. [项目最终效果](#5)

## <span id="1">应用概述:</span>
IOS-Planner 是一个为个人和小团队设计的任务规划和管理应用。应用的核心功能包括任务展示、日程管理以及个性化设置。

## <span id="2">核心功能与需求:</span>

1. 主屏幕展示与布局:
- 使用HStack和VStack来组合视图，展示任务和日程。
- 在VStack()和HStack()中利用alignment、spacing等属性来精细控制布局。
- 在布局中融入Spacer()，以创建动态的空间分布。
- 使用Label和Text等组件来展示信息，确保内容清晰可读。

2. 字体与样式设计:
- 指定不同区域和元素的字体样式，如标题使用加粗字体，正文使用标准字体。
- 使用padding来优化元素间的空间布局。
- 利用系统图标(systemImage)来增加视觉元素，如任务图标、警告标记等。

3. 颜色主题与背景:
- 应用主题色到背景、文本和按钮上，确保一致性和美观性。

4. 任务模型（DailyTask）:
- 定义一个包含标题、描述、截止日期，主题颜色，和当前进度的DailyTask模型。
- 实现Identifiable协议，确保每个任务在列表中可以被唯一识别。

5. 交互设计:
- 实现视图间的流畅导航，如从主屏幕到任务详情的跳转。
- 提供添加新任务和编辑现有任务的功能。

6. 辅助功能与设计一致性:
- 保持应用对于视力障碍用户友好，特别是通过VoiceOver支持。

## <span id="3">## 文件结构树状图:</span>
```markdown
IOS-Planner/
│
├── Models/
│   └── DailyTask.swift
│
├── Views/
│   ├── MainView.swift
│   ├── ListView.swift
│   ├── CardView.swift
│   └── DetailView.swift
│
├── ViewModels/
    └── ViewModel.swift
```

## <span id="5">项目最终效果</span>
![](https://github.com/tangjiaoshou55/IOS-Planner/blob/main/final.gif)
