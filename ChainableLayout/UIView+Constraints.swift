
/// Получение текущих ограничений
public extension UIView {
	var leftConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .left)
	}

	var rightConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .right)
	}

	var topConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .top)
	}

	var bottomConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .bottom)
	}

	var heightConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .height)
	}

	var widthConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .width)
	}

	var centerXConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .centerX)
	}

	var centerYConstraint: NSLayoutConstraint? {
		return constraintFor(attribute: .centerY)
	}
}
