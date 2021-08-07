
/// Добавление ограничений .lastBaseline
public extension UIView {
	/// Установить ограничение .lastBaseline как у другой вью c отступом
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func lastBaseline(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(lastBaselineAnchor.constraint(equalTo: view.lastBaselineAnchor, c: offset, p: priority))
        return self
	}

	/// Установить ограничение .firstBaseline как у другой вью
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func lastBaseline(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(lastBaselineAnchor.constraint(relation: view.relation, anchor: view.view.lastBaselineAnchor, c: offset, p: priority))
        return self
	}
}
