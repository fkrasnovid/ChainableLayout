
/// Добавление ограничений .height
public extension UIView {
	/// Установить ограничение .height по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func height(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		bag.append(heightAnchor.constraint(c: value, p: priority))
		return self
	}


	/// Установить ограничение .height как у .height другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func height(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		bag.append(heightAnchor.constraint(equalTo: view.heightAnchor, p: priority))
		return self
	}

	/// Установить ограничение .height по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func height(_ value: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(heightAnchor.constraint(fo: value.toObjc, p: priority))
		return self
	}

	/// Установить ограничение .height как у .height другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func height(like view: FlexibleView, priority: UILayoutPriority = .required) -> Self {
		bag.append(heightAnchor.constraint(relation: view.relation, anchor: view.view.heightAnchor, p: priority))
		return self
	}
}
