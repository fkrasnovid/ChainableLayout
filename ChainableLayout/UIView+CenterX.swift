
/// Добавление ограничений .centerX
public extension UIView {
	/// Установить ограничение .centerX к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerX(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerXAnchor.constraint(equalTo: currentSuperview.centerXAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .centerX к .centerX другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerX(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerXAnchor.constraint(equalTo: view.centerXAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .centerX к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerX(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerXAnchor.constraint(fo: offset.toObjc, anchor: currentSuperview.centerXAnchor, p: priority))
		return self
	}

	/// Установить ограничение .centerX к .centerX другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerX(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(centerXAnchor.constraint(relation: view.relation, anchor: view.view.centerXAnchor, c: offset, p: priority))
		return self
	}
}
