
/// Расширение NSLayoutAnchor для возможности установки приоритетов
extension NSLayoutAnchor {
	@objc
	func constraint(
		equalTo anchor: NSLayoutAnchor<AnchorType>,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(equalTo: anchor)
		const.priority = p
		return const
	}

	@objc
	func constraint(
		equalTo anchor: NSLayoutAnchor<AnchorType>,
		c: CGFloat,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(equalTo: anchor, constant: c)
		const.priority = p
		return const
	}

	@objc
	func constraint(
		fo: ObjCFlexibleOffset,
		anchor: NSLayoutAnchor<AnchorType>,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const: NSLayoutConstraint
		switch fo.relation {
		case .greaterThanOrEqual:
			const = constraint(greaterThanOrEqualTo: anchor, constant: fo.value)
		case .lessThanOrEqual:
			const = constraint(lessThanOrEqualTo: anchor, constant: fo.value)
		}
		const.priority = p
		return const
	}

	@objc
	func constraint(
		relation: FlexibleRelation,
		anchor: NSLayoutAnchor<AnchorType>,
		c: CGFloat,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const: NSLayoutConstraint
		switch relation {
		case .greaterThanOrEqual:
			const = constraint(greaterThanOrEqualTo: anchor, constant: c)
		case .lessThanOrEqual:
			const = constraint(lessThanOrEqualTo: anchor, constant: c)
		}
		const.priority = p
		return const
	}

	@objc
	func constraint(
		relation: FlexibleRelation,
		anchor: NSLayoutAnchor<AnchorType>,
		p: UILayoutPriority
	) -> NSLayoutConstraint {
		let const: NSLayoutConstraint
		switch relation {
		case .greaterThanOrEqual:
			const = constraint(greaterThanOrEqualTo: anchor)
		case .lessThanOrEqual:
			const = constraint(lessThanOrEqualTo: anchor)
		}
		const.priority = p
		return const
	}
}
