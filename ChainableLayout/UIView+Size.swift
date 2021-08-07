
/// Добавление ограничений .size
public extension UIView {
	/// Установить ограничение .width и .height по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func size(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		bag.append(contentsOf: [
			heightAnchor.constraint(c: value, p: priority),
			widthAnchor.constraint(c: value, p: priority)
		])
		return self
	}

	/// Установить ограничение .width и .height как у другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func size(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		bag.append(contentsOf: [
			heightAnchor.constraint(equalTo: view.heightAnchor, p: priority),
			widthAnchor.constraint(equalTo: view.widthAnchor, p: priority)
		])
		return self
	}
}
