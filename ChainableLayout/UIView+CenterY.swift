
/// Добавление ограничений .centerY
public extension UIView {
	/// Установить ограничение .centerY к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerY(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerYAnchor.constraint(equalTo: currentSuperview.centerYAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .centerY к .centerY другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerY(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerYAnchor.constraint(equalTo: view.centerYAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .centerY к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerY(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerYAnchor.constraint(fo: offset.toObjc, anchor: currentSuperview.centerYAnchor, p: priority))
		return self
	}

	/// Установить ограничение .centerY к .centerY другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerY(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerYAnchor.constraint(relation: view.relation, anchor: view.view.centerYAnchor, c: offset, p: priority))
		return self
	}
}
