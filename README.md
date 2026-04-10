# Flutter Widget Daily Practice 🚀

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

## Overview

This repository is dedicated to **daily practice of Flutter widgets**.

The goal is to **write, practice, and showcase one widget per day**, helping me:

- Build **hands-on experience** with Flutter widgets.
- Maintain a **coding streak** on GitHub visible to recruiters.
- Strengthen understanding of **advanced Flutter concepts**.
- Create a reference for **real-world Flutter app development**.

Each widget will have a working example in the repo, so anyone can **run, learn, and test** the widgets quickly.

---

## Why This Repository?

- **Demonstrates consistency:** Shows recruiters that I practice Flutter **daily**.
- **Hands-on learning:** Each widget example builds practical knowledge, not just theory.
- **Portfolio-ready:** A single repository where all Flutter widget experiments are collected.
- **Interview prep:** Prepares me for **senior Flutter developer interviews** by mastering widgets and their nuances.

---

## Project Structure

```
lib/
├── main.dart                         # App entry point

├── screens/                          # UI screens (pages)
│   └── home_page.dart                # Main home screen (widget showcase)

├── daily_widget/                     # Daily Flutter widget implementations
│   └── app_bar.dart                 # Example: AppBar widget of the day
│   └── ...                          # One new widget added daily

├── local_widgets/                    # Reusable UI components (small widgets)
│   ├── app_bar_buttons.dart
│   ├── custom_tab_bar.dart
│   ├── tab_content.dart
│   ├── item_card.dart
│   └── ...                          # Expandable reusable components

├── data/                             # Static or structured data
│   └── tab_data.dart

├── models/                           # Data models
│   └── tab_item.dart
```

- **Each widget file** is self-contained with a complete working example.
- **HomeScreen** imports and shows widgets for easy testing.

---

## How to Run

1. Clone the repository:

```bash
git clone https://github.com/yourusername/flutter_widget_daily.git
```

2. Navigate to the project folder:

```bash
cd flutter_widget_daily
```

3. Get dependencies:

```bash
flutter pub get
```

4. Run the project on an emulator or device:

```bash
flutter run
```

5. Open `HomeScreen` to explore all added widget examples.

---

## Widgets Covered

Widgets will be added daily. Example categories include:

### 🧱 Layout & Composition
`Stack` · `IndexedStack` · `AspectRatio` · `SliverList` · `LayoutBuilder`

### 📜 Scrolling & Lists
`ListView` · `GridView` · `PageView` · `ReorderableListView`

### 👆 Interactive & Gestures
`GestureDetector` · `Draggable` · `Dismissible` · `InteractiveViewer`

### 🎬 Animations
`AnimatedContainer` · `AnimatedSwitcher` · `Hero` · `TweenAnimationBuilder`

### ⚙️ State & Async
`FutureBuilder` · `StreamBuilder` · `ValueListenableBuilder`

### 🎨 Advanced UI
`Chip` · `ExpansionTile` · `PaginatedDataTable` · `RefreshIndicator`

### ✏️ Custom Painting & Graphics
`CustomPaint` · `ClipPath` · `ShaderMask` · `Transform`

---

## Contribution

- Open issues to suggest new widgets.
- Pull requests are welcome for widget examples or improvements.

---

## License

This repository is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.
