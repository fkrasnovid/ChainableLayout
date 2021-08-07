
/// Добавление ограничений .firstBaseline
public extension UIView {
	/// Установить ограничение .firstBaseline как у другой вью
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func firstBaseline(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(firstBaselineAnchor.constraint(equalTo: view.firstBaselineAnchor, c: offset, p: priority))
        return self
	}

	/// Установить ограничение .firstBaseline как у другой вью
	/// - Parameters:
	///   - view: FlexibleView для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func firstBaseline(like view: FlexibleView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(firstBaselineAnchor.constraint(relation: view.relation, anchor: view.view.firstBaselineAnchor, c: offset, p: priority))
        return self
	}
}
