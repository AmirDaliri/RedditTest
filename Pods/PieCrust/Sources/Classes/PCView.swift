//
//  PCView.swift
//  PieCrust
//
//  Created by Omar Albeik on 6/14/18.
//  Copyright © 2018 Mobilion. All rights reserved.
//

import UIKit

/// PCView.
///
/// - Conforms to:
///   - `Crustable`
///   - `Animatable`
///   - `Borderable`
///   - `Shadowable`
open class PCView: UIView, Crustable, Animatable, Borderable, Shadowable {

	/// Initializes and returns a newly allocated view object with the specified frame rectangle.
	///
	/// - Parameter frame: The frame rectangle for the view, measured in points. The origin of the frame is relative to the superview in which you plan to add it. This method uses the frame rectangle to set the center and bounds properties accordingly.
	public override init(frame: CGRect) {
		super.init(frame: frame)

		setupViews()
		setupLayout()
	}

	/// Returns an object initialized from data in a given unarchiver.
	///
	/// - Parameter aDecoder: An unarchiver object.
	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)

		setupViews()
		setupLayout()
	}

	/// Setup view and its subviews here.
	open func setupViews() {
		backgroundColor = .white
	}

	/// Setup view and its subviews autolayout here.
	open func setupLayout() {}

}

// MARK: - Default implementation for UIView.
extension Crustable where Self: UIView {

	/// Preferred padding for autolayout _(default is 20.0)_.
	public var preferredPadding: CGFloat {
		return 20.0
	}

	/// Creates and returns a new UIView with setting its properties in one line.
	///
	/// - Parameter backgroundColor: Background color of the view.
	public init(backgroundColor: UIColor?) {
		self.init()

		self.backgroundColor = backgroundColor
	}

}
