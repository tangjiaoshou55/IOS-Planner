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

6. 辅助功能与设计一致性（可选）:
- 保持应用对于视力障碍用户友好，特别是通过VoiceOver支持。

#### 额外注意事项:
- 用户体验：进行用户测试，特别关注交互的直观性和界面的吸引力。

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

## <span id="4">代码实现:</span>
1. **DailyTask.swift**
- 定义DailyTask模型，包含标题、描述、截止日期，主题颜色，和当前进度。DailyTask模型为Identifable类型，记得需要添加 init()。
    - Hint: 
    1. id: UUID()，确保每个任务在列表中可以被唯一识别。
    2. title: String，任务标题。
    3. description: String，任务描述。
    4. deadline: Date，任务截止日期。
    5. theme: Color，任务主题颜色，简单版，直接调用Color颜色而不是创建一个新的Theme的枚举 enum。
    6. progress: Double，进度条的值为0.0到1.0之间的浮点数。 
    -  sample data:
    ```swift
    extension DailyTask {
        static var sampleData: [DailyTask] {
            let calendar = Calendar.current

            let task1Date = DateComponents(calendar: calendar, year: 2024, month: 1, day: 30).date ?? Date()
            let task2Date = DateComponents(calendar: calendar, year: 2022, month: 2, day: 1).date ?? Date()

            return [
                DailyTask(title: "Task 1", description: "Description 1", dueDate: task1Date, theme: .blue, progress: 0.9),
                DailyTask(title: "Task 2", description: "Description 2", dueDate: task2Date, theme: .green, progress: 0.5)
            ]
        }
    }
    ```

2.**MainView.swift** 代码已提供，无需修改。
- 创建主屏幕视图，包含任务列表和日程列表。

3.**ListView.swift** 代码已提供，无需修改。
- 创建任务列表视图，包含任务卡片视图。

4.**CardView.swift** 
- 创建任务卡片视图，包含任务标题、描述、截止日期，主题颜色，和一个闹钟的图标。
- 页面分成三段，背景为主题颜色 theme， 记得加padding (对于整个界面) 然后需要不透明度为 0.5（**该用什么？**）：
    - 上、展示任务标题、描述 （align left）
        - 标题 title：标题（headline）字体
        - 描述 description：正文（body）字体
        - 两者中间有一定的间距 （**该用什么？**）
    - 中、留空 (**该用什么？**)
    - 下、展示截止日期、时钟图标
        - 截止日期 deadline写法：
        ```swift
        Text(task.dueDate, style: .date)
        ```
        - 时钟图标写法：
        ```swift
        Image(systemName: "alarm")
        ```
        - 两者中间有一定的间距 （**该用什么？**）

5.**DetailView.swift**
- 创建任务详情视图，包含任务标题、描述、截止日期，主题颜色，和一个进度条。
- 页面分成五段，背景为主题颜色 theme， 记得加padding (对于整个界面) 然后需要不透明度为 0.2（**该用什么？**）：
    - 上、展示任务标题、描述 （align left）
        - 标题 title：大号标题（largeTitle）字体
        - 描述 description：正文（body）字体
        - 两者中间有一定的间距 （**该用什么？**）
    - 中上、留空 (**该用什么？**)
    - 中、 进度条 ProgressView
    - 中下、留空 (**该用什么？**)
    - 下、展示截止日期

6.**ViewModel.swift** 以提供，无需修改。
- 创建ViewModel，用于管理DailyTask数据。

## <span id="5">项目最终效果</span>
![](https://github.com/tangjiaoshou55/IOS-Planner/blob/main/final.gif)