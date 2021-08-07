
/// Добавление ограничений .left
public extension UIView {
	/// Установить ограничение .left к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func left(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(leftAnchor.constraint(equalTo: currentSuperview.leftAnchor, c: offset, p: priority))
		return self
	}

	/// Установить ограничение .left к .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func left(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(leftAnchor.constraint(equalTo: view.rightAnchor, c: offset, p: priority))
        return self
    }

	/// Установить ограничение .left как у .left другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func left(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(leftAnchor.constraint(equalTo: view.leftAnchor, c: offset, p: priority))
        return self
    }

	/// Установить ограничение .left к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func left(_ offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(leftAnchor.constraint(fo: offset.toObjc, anchor: currentSuperview.leftAnchor, p: priority))
		return self
	}

	/// Установить ограничение .left к .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: FlexibleOffset структура оффсета
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func left(to view: UIView, offset: FlexibleOffset, priority: UILayoutPriority = .required) -> Self {
		bag.append(leftAnchor.constraint(fo: offset.toObjc, anchor: view.rightAnchor, p: priority))
        return self
    }

	/// Установить ограничение .left как у .left другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func left(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(leftAnchor.constraint(relation: view.relation, anchor: view.view.leftAnchor, c: offset, p: priority))
		return self
	}
}
