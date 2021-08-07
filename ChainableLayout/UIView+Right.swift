
/// Добавление ограничений .right
public extension UIView {
	/// Установить ограничение .right к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func right(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(currentSuperview.rightAnchor.constraint(equalTo: rightAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .right к .left другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func right(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(view.leftAnchor.constraint(equalTo: rightAnchor, c: offset, p: priority))
        return self
    }

	/// Установить ограничение .right как у .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func right(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(rightAnchor.constraint(equalTo: view.rightAnchor, c: offset, p: priority))
        return self
    }

	/// Установить ограничение .right к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func right(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(currentSuperview.rightAnchor.constraint(fo: offset.toObjc, anchor: rightAnchor, p: priority))
		return self
	}

	/// Установить ограничение .right к .left другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func right(to view: UIView, offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(view.leftAnchor.constraint(fo: offset.toObjc, anchor: rightAnchor, p: priority))
        return self
    }

	/// Установить ограничение .right как у .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func right(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(rightAnchor.constraint(relation: view.relation, anchor: view.view.rightAnchor, c: offset, p: priority))
		return self
	}
}
