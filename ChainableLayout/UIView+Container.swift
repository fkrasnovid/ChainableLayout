
/// Добавление ограничений относительно контейнера
public extension UIView {
	/// Установить ограничение ко всем сторонам контейнера
	///
	/// - Note: Не требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	func pinContainer(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) {
		NSLayoutConstraint.activate([
			leftAnchor.constraint(equalTo: currentSuperview.leftAnchor, c: offset, p: priority),
			currentSuperview.rightAnchor.constraint(equalTo: rightAnchor, c: offset, p: priority),
			topAnchor.constraint(equalTo: currentSuperview.topAnchor, c: offset, p: priority),
			currentSuperview.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority)
        ])
	}

	/// Установить ограничение ко всем сторонам safeArea контейнера
	/// - Note: Не требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	func pinContainerSafe(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) {
		NSLayoutConstraint.activate([
			leftAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.leftAnchor, c: offset, p: priority),
			currentSuperview.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: rightAnchor, c: offset, p: priority),
			topAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.topAnchor, c: offset, p: priority),
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority)
        ])
	}

	/// Установить ограничение вертикально к контейнеру
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: равномерный отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	func pinVertically(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(contentsOf: [
			topAnchor.constraint(equalTo: currentSuperview.topAnchor, c: offset, p: priority),
			currentSuperview.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority)
		])
		return self
	}

	/// Установить ограничение вертикально к safeArea контейнера
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: равномерный отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	func pinVerticallySafe(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(contentsOf: [
			topAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.topAnchor, c: offset, p: priority),
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, c: offset, p: priority)
		])
		return self
	}

	/// Установить ограничение горизонтально к контейнеру
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: равномерный отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	func pinHorizontally(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		bag.append(contentsOf: [
			leftAnchor.constraint(equalTo: currentSuperview.leftAnchor, c: offset, p: priority),
			currentSuperview.rightAnchor.constraint(equalTo: rightAnchor, c: offset, p: priority)
		])
		return self
	}

	/// Установить ограничение X и Y позиции относительно центра супервью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
    func centerContainer(priority: UILayoutPriority = .required) -> Self {
		bag.append(contentsOf: [
			centerXAnchor.constraint(equalTo: currentSuperview.centerXAnchor, p: priority),
			centerYAnchor.constraint(equalTo: currentSuperview.centerYAnchor, p: priority)
		])
		return self
	}
}
