
/// Добавление ограничений .top
public extension UIView {
	/// Установить ограничение .top к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func top(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(equalTo: currentSuperview.topAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .top к safeArea супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func topSafe(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.topAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .top к .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func top(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(equalTo: view.bottomAnchor, c: offset, p: priority))
        return self
    }

	/// Установить ограничение .top как у .top другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func top(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(equalTo: view.topAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .top к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func top(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(fo: offset.toObjc, anchor: currentSuperview.topAnchor, p: priority))
		return self
	}

	/// Установить ограничение .top к safeArea супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func topSafe(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(fo: offset.toObjc, anchor: currentSuperview.safeAreaLayoutGuide.topAnchor, p: priority))
		return self
	}

	/// Установить ограничение .top к .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func top(to view: UIView, offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(fo: offset.toObjc, anchor: view.bottomAnchor, p: priority))
        return self
    }

	/// Установить ограничение .top как у .top другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func top(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(topAnchor.constraint(relation: view.relation, anchor: view.view.topAnchor, c: offset, p: priority))
		return self
	}
}
