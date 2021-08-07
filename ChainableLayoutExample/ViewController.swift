
import ChainableLayout

class ViewController: UIViewController {

	private let view1 = UIView()
	private let view2 = UIView()
	private let view3 = UIView()
	private let view4 = UIView()
	private let view5 = UIView()
	private let view6 = UIView()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white

		view1.backgroundColor = .blue
		view2.backgroundColor = .black
		view3.backgroundColor = .green
		view4.backgroundColor = .yellow
		view5.backgroundColor = .red
		view6.backgroundColor = .brown

		view.addSubviews(view1, view2, view3, view4, view5, view6)

		view1
			.size(100)
			.centerContainer()
			.activate()

		view2
			.size(like: view1)
			.left(to: view1, offset: 50)
			.top(like: view1)
			.right(<=25)
			.activate()

		view3
			.topSafe(priority: .defaultLow)
			.height(200)
			.left(10)
			.bottom(to: view1, offset: >=150, priority: .sceneSizeStayPut)
			.width(100)
			.activate()

		view4
			.top(to: view1, offset: 50)
			.size(100)
			.centerX(like: view1, priority: .fittingSizeLevel)
			.activate()

		view5
			.left(10)
			.bottomSafe()
			.width(<=250)
			.height(100)
			.activate()

		view6
			.right(10)
			.top(to: view4, offset: 50)
			.left(to: view5, offset: 10)
			.width(<=250)
			.bottom(like: >=view5)
			.activate()
	}
}
