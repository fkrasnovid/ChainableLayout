
/// Расширение NSLayoutDimension для возможности установки приоритетов
extension NSLayoutDimension {
	func constraint(
		c: CGFloat,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(equalToConstant: c)
		const.priority = p
		return const
	}

	func constraint(
		fo: ObjCFlexibleOffset,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const: NSLayoutConstraint
		switch fo.relation {
		case .greaterThanOrEqual:
			const = constraint(greaterThanOrEqualToConstant: fo.value)
		case .lessThanOrEqual:
			const = constraint(lessThanOrEqualToConstant: fo.value)
		}
		const.priority = p
		return const
	}
}
