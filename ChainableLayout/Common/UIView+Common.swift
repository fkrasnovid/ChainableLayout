
public extension UIView {
	/// Добавление subviews
	/// - Parameter subviews: subviews для добавления
	/// - Returns: Self
	@discardableResult
	func addSubviews(_ subviews: UIView...) -> Self {
		subviews.forEach {
			addSubview($0)
			$0.translatesAutoresizingMaskIntoConstraints = false
		}
		return self
	}

	/// Добавление себя как subview к superview
	/// - Parameter superview: superview для добавления
	/// - Returns: Self
	@discardableResult
	func add(to superview: UIView) -> Self {
		superview.addSubview(self)
		translatesAutoresizingMaskIntoConstraints = false
		return self
	}

	/// Отложенная активация всех ограничений
	func activate() {
		NSLayoutConstraint.activate(bag)
		bag.removeAll()
	}
}

/// Common расширение для работы с layout
extension UIView {
	/// Поиск текущей супервью
	var currentSuperview: UIView {
		guard let superview = self.superview else { fatalError("Супервью не найдено") }
		return superview
	}

	/// Поиск ограничения по аттрибуту
	func constraintFor(attribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint? {
		func lookForConstraint(in view: UIView?) -> NSLayoutConstraint? {
			guard let constraints = view?.constraints else { return nil }
			for c in constraints {
				if let fi = c.firstItem as? NSObject, fi == self && c.firstAttribute == attribute {
					return c
				} else if let si = c.secondItem as? NSObject, si == self && c.secondAttribute == attribute {
					return c
				}
			}
			return nil
		}

		if (attribute == .width || attribute == .height) {
			return lookForConstraint(in: self.superview) ?? lookForConstraint(in: self)
		}

		return lookForConstraint(in: self.superview)
	}
}

// MARK: - Рантайм проперти для хранения неактивированных ограничений
extension UIView: PropertyStoring {
	private struct Key {
		static var constraints = "constraints"
	}
	typealias T = [NSLayoutConstraint]
	var bag: T {
		get { return getAssociatedObject(&Key.constraints, defaultValue: []) }
		set { return objc_setAssociatedObject(self, &Key.constraints, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
	}
}
