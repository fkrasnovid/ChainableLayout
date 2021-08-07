## Декларативный layout swift
Расширение для удобной и быстрой работы с ограничениями. Полностью поддерживается chainable синтаксис.
Все ограничения добавляются без обработки isActive флага, для активации в конце цепочки необходимо вызвать .activate()

### Требования
- iOS 11
- Xcode 10
- Swift 5

### Пример использования:

```swift
view.addSubviews(pinnableView, view6)
pinnableView
    .size(100)
    .centerContainer()
    .activate()
    
view6
    .right(10)
    .top(to: view4, offset: 50)
    .left(to: view5, offset: 10)
    .width(<=250)
    .bottom(like: >=view5)
    .activate()
```
#### Против
```swift
view.addSubview(pinnableView)
view.addSubview(view6)

pinnableView.translatesAutoresizingMaskIntoConstraints = false
view6.translatesAutoresizingMaskIntoConstraints = false

NSLayoutConstraint.activate([
    pinnableView.heightAnchor.constraint(equalToConstant: 100),
    pinnableView.widthAnchor.constraint(equalToConstant: 100),
    pinnableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    pinnableView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
])

NSLayoutConstraint.activate([
    view.rightAnchor.constraint(equalTo: view6.rightAnchor, constant: 10),
    view6.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 50),
    view6.leftAnchor.constraint(equalTo: view5.rightAnchor, constant: 10),
    view6.widthAnchor.constraint(greaterThanOrEqualToConstant: 250),
    view5.topAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor),
])
```

### Так же есть возможность получать уже установленные ограничения и редактировать их:
```
pinnableView.leftConstraint?.constant = 10.0
pinnableView.topConstraint?.constant = 25.0
```

### Carthage
Для интеграции ChainableLayout, необходимо прописать в Cartfile:
```
github "LightColorTT/ChainableLayout" ~> 1.0.0
```
