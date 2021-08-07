
/// Добавление ограничений .bottom
public extension UIView {
	/// Установить ограничение .bottom к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(currentSuperview.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .bottom к safeArea .bottom супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomSafe(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .bottom к .top другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(view.topAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .bottom как у .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(view.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .bottom к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(currentSuperview.bottomAnchor.constraint(fo: offset.toObjc, anchor: bottomAnchor, p: priority))
		return self
	}

	/// Установить ограничение .bottom к safeArea .bottom супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomSafe(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(fo: offset.toObjc, anchor: bottomAnchor, p: priority))
		return self
	}

	/// Установить ограничение .bottom к .top другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(to view: UIView, offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(view.topAnchor.constraint(fo: offset.toObjc, anchor: bottomAnchor, p: priority))
		return self
	}

	/// Установить ограничение .bottom как у .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(view.view.bottomAnchor.constraint(relation: view.relation, anchor: bottomAnchor, c: offset, p: priority))
		return self
	}
}
