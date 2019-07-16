//
//  KeyboardObserving.swift
//  PieCrust
//
//  Created by Omar Albeik on 6/14/18.
//  Copyright © 2018 Mobilion. All rights reserved.
//

import UIKit

/// Conform to KeyboardObserving protocol to obbserve UIKeyboard events in a view controller.
public protocol KeyboardObserving: AnyObject {

	/// Called when .UIKeyboardWillShow notification is prodcasted by system.
	///
	/// - Parameter notification: .UIKeyboardWillShow notification.
	func keyboardWillShow(_ notification: KeyboardNotification?)

	/// Called when .UIKeyboardDidShow notification is prodcasted by system.
	///
	/// - Parameter notification: .UIKeyboardDidShow notification.
	func keyboardDidShow(_ notification: KeyboardNotification?)

	/// Called when .UIKeyboardWillHide notification is prodcasted by system.
	///
	/// - Parameter notification: .UIKeyboardWillHide notification.
	func keyboardWillHide(_ notification: KeyboardNotification?)

	/// Called when .UIKeyboardDidHide notification is prodcasted by system.
	///
	/// - Parameter notification: .UIKeyboardDidHide notification.
	func keyboardDidHide(_ notification: KeyboardNotification?)

	/// Called when .UIKeyboardWillChangeFrame notification is prodcasted by system.
	///
	/// - Parameter notification: .UIKeyboardWillChangeFrame notification.
	func keyboardWillChangeFrame(_ notification: KeyboardNotification?)

	/// Called when .UIKeyboardDidChangeFrame notification is prodcasted by system.
	///
	/// - Parameter notification: .UIKeyboardDidChangeFrame notification.
	func keyboardDidChangeFrame(_ notification: KeyboardNotification?)

	/// Register for UIKeyboard notifications.
	func registerForKeyboardEvents()

}

// MARK: - Default implementation for UIViewController.
extension KeyboardObserving where Self: UIViewController {

	/// Register for UIKeyboard notifications.
	public func registerForKeyboardEvents() {
		_ = NotificationCenter.default.addObserver(forName:  UIWindow.keyboardWillShowNotification, object: nil, queue: nil) { [weak self] notification in
			self?.keyboardWillShow(KeyboardNotification(notification: notification))
		}

		_ = NotificationCenter.default.addObserver(forName: UIWindow.keyboardDidShowNotification, object: nil, queue: nil) { [weak self] notification in
			self?.keyboardDidShow(KeyboardNotification(notification: notification))
		}

		_ = NotificationCenter.default.addObserver(forName: UIWindow.keyboardWillHideNotification, object: nil, queue: nil) { [weak self] notification in
			self?.keyboardWillHide(KeyboardNotification(notification: notification))
		}

		_ = NotificationCenter.default.addObserver(forName: UIWindow.keyboardDidHideNotification, object: nil, queue: nil) { [weak self] notification in
			self?.keyboardDidHide(KeyboardNotification(notification: notification))
		}

		_ = NotificationCenter.default.addObserver(forName: UIWindow.keyboardWillChangeFrameNotification, object: nil, queue: nil) { [weak self] notification in
			self?.keyboardWillChangeFrame(KeyboardNotification(notification: notification))
		}

		_ = NotificationCenter.default.addObserver(forName: UIWindow.keyboardDidChangeFrameNotification, object: nil, queue: nil) { [weak self] notification in
			self?.keyboardDidChangeFrame(KeyboardNotification(notification: notification))
		}

	}

}
