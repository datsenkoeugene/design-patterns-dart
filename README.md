# Design Patterns in Dart
This repository is part of the [**Refactoring.Guru**](https://refactoring.guru/design-patterns) project.
It contains **Dart** examples for all classic **GoF** design patterns.

# Implementation checklist:
- [ ] **Creation**
    - [ ] **Abstract Factory** [[Conceptual Gui Factory](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/abstract_factory/conceptual_gui_factory)]
    - [x] **Builder** - [[Color Text Format](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/builder/color_text_format)]
    - [ ] **Factory Method**
    - [x] **Prototype** - [[Shapes](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/prototype/shapes)] 
    - [ ] **Singleton**
- [ ]  **Behavioral**
    - [x] **Chain of Responsibility** - [[Server Middleware](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/chain_of_responsibility/server_middleware)]
    - [x] **Command** - [[Text Editor](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/command/text_editor)] 
    - [ ] Interpreter
    - [ ] **Iterator**
    - [ ] **Mediator**
    - [x] **Memento** - [[Conceptual](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/memento/conceptual)] [[Memento Editor](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/memento/memento_editor)] 
    - [x] **Observer** - [[Open-Close Editor Events](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/observer/open_close_editor_events)] [[AppObserver](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/observer/app_observer)] [[Subscriber Flutter Widget](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/observer/subscriber_flutter_widget)]
    - [ ] **State**
    - [ ] **Template Method**
    - [ ] **Visitor**
    - [ ] **Strategy**
- [ ] **Structural**
    - [x] **Adapter** - [[Text Graphics](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/adapter/text_graphics)] [[Square Round conflict](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/adapter/square_round_conflict)] [[Flutter Adapter](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/adapter/flutter_adapter)] 
    - [x] **Bridge** - [[Remote Device Control](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/bridge/devices_remote_control)] [[Clock](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/bridge/clock)] 
    - [x] **Composite** - [[Image Editor](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/composite/image_editor)] [[Products and Boxes](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/composite/products_and_boxes)] 
    - [x] **Decorator** - [[Data Source Decoder](https://github.com/RefactoringGuru/design-patterns-dart/tree/main/patterns/decorator/data_source_decoder)]
    - [ ] **Facade**
    - [ ] **Flyweight**
    - [ ] **Proxy**

## Requirements

The examples were written in **Dart 2.15**.
Some complex examples require **Flutter 2.12**.

## Contributor's Guide

We appreciate any help, whether it's a simple fix of a typo or a whole new example. Just [make a fork](https://help.github.com/articles/fork-a-repo/), do your change and submit a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/).

### Step-by-step instruction
1. Just make a fork.
2. Clone the forked repository to your local machine.
3. Create a new branch and name it, for example: fix-issue-32.
4. Make changes.
5. Create commits and push them to your forked Github repository.
6. Submit a pull request to the master branch.
7. Wait for review.

### Style guide
Here's a style guide which might help you to keep your changes consistent with our code:

1. All code should meet the [Effective Dart: Style](https://dart.dev/guides/language/effective-dart/style).
 
2. Use [Dart Format](https://dart.dev/tools/dart-format) or auto format shortcut `Ctrl + Alt + L` in your ide. 

3. Try to hard wrap the code at 80th's character. It helps to list the code on the website without scrollbars.

4. File names should match following convention: `some_class_name.dart`

5. Comments may or may not have language tags in them, such as this:
    ```dart
        // EN: All products families have the same varieties (MacOS/Windows).
        // This is a MacOS variant of a button.
        
        // RU: Все семейства продуктов имеют одни и те же вариации (MacOS/Windows).
        // Это вариант кнопки под MacOS.
    ```
    Don't be scared and ignore the non-English part of such comments. If you want to change 
    something in a comment like this, then do it. Even if you do it wrong, we'll tell you how 
    to fix it during the Pull Request.


### Build Flutter examples
```batch
cd root directory
flutter build web -t bin\main.dart --web-renderer html
```

### Deploy flutter demos
1. Fork this repo: `https://github.com/RefactoringGuru/design-patterns-dart`
2. Apply your changes.
3. Run the script `dart bin\deploy_flutter_demos.dart`.
This script will build a web platform flutter app and push the changes to your **web-demos** branch on github.
4. You can now make a pull request on the **web-demos** branch.
5. Once approved for the merge, the web app will be available at https://refactoringguru.github.io/design-patterns-dart .

## License
This work is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png" /></a>


## Credits
Authors: Alexander Shvets ([@neochief](https://github.com/neochief)), ilopX ([@ilopX](https://github.com/ilopX))
