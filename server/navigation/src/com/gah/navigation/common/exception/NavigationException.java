package com.gah.navigation.common.exception;

import java.io.PrintStream;
import java.io.PrintWriter;

public class NavigationException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected Throwable cause;

	public NavigationException() {
		super("Error occurred in application.");
	}

	public NavigationException(String message) {
		super(message);
	}

	public NavigationException(String message, Throwable cause) {
		super(message);
		this.cause = cause;
	}

	public Throwable initCause(Throwable cause) {
		this.cause = cause;
		return cause;
	}

	public void printStackTrace() {
		super.printStackTrace();
	}

	public void printStackTrace(PrintStream s) {
		super.printStackTrace(s);
	}

	public void printStackTrace(PrintWriter w) {
		super.printStackTrace(w);
	}

	public Throwable getCause() {
		return cause;
	}

	public Throwable getNestedException(Throwable e) {
		if (e != null) {
			Throwable e2 = e.getCause();
			if (e2 != null) {
				return e2;
			} else {
				return e;
			}
		}
		return null;
	}
}
