
/// Добавление ограничений .width
public extension UIView {
	/// Установить ограничение .width по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func width(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		bag.append(widthAnchor.constraint(c: value, p: priority))
		return self
	}

	/// Установить ограничение .width как у .width другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func width(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(widthAnchor.constraint(equalTo: view.widthAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .width по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func width(_ value: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(widthAnchor.constraint(fo: value.toObjc, p: priority))
		return self
	}

	/// Установить ограничение .width по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func width(like view: FlexibleView, priority: UILayoutPriority = .required) -> Self {
		bag.append(widthAnchor.constraint(relation: view.relation, anchor: view.view.widthAnchor, p: priority))
		return self
	}
}
