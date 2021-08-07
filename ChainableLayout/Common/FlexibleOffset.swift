
/// Сущность для возможности использования <=/>= операторов
public struct FlexibleOffset {
	let value: CGFloat
    let relation: FlexibleRelation

	var toObjc: ObjCFlexibleOffset {
		return ObjCFlexibleOffset(value: value, relation: relation)
	}
}

/// Сущность для возможности использования <=/>= операторов
public struct FlexibleView {
	let view: UIView
    let relation: FlexibleRelation
}

/// Необходимая objc прослойка
@objc final class ObjCFlexibleOffset: NSObject {
	let value: CGFloat
    let relation: FlexibleRelation

	init(value: CGFloat, relation: FlexibleRelation) {
		self.value = value
		self.relation = relation
		super.init()
	}
}

/// Варианты условий
@objc enum FlexibleRelation: Int {
	case lessThanOrEqual
	case greaterThanOrEqual
}

prefix operator >=

@discardableResult
public prefix func >= (o: CGFloat) -> FlexibleOffset {
	return FlexibleOffset(value: o, relation: .greaterThanOrEqual)
}

@discardableResult
public prefix func >= (view: UIView) -> FlexibleView {
	return FlexibleView(view: view, relation: .greaterThanOrEqual)
}

prefix operator <=

@discardableResult
public prefix func <= (o: CGFloat) -> FlexibleOffset {
	return FlexibleOffset(value: o, relation: .lessThanOrEqual)
}

@discardableResult
public prefix func <= (view: UIView) -> FlexibleView {
	return FlexibleView(view: view, relation: .lessThanOrEqual)
}
