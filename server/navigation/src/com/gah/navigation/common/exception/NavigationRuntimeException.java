package com.gah.navigation.common.exception;

public class NavigationRuntimeException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2067015594546871650L;

	/**
	 * Why this exception was thrown.
	 */
	private Throwable reason;
	/**
	 *Constructs an SunsoftException with no message or encapsulated exception.
	 */
	public NavigationRuntimeException() {
		this(null,null);
	}
    /**
     * Constructs an SunsoftException with the given message but no encapsulated exception.
     * @param msg the exception's detail message
     */
	public NavigationRuntimeException(String msg) {
		this(msg,null);
	}
    /**
     * Constructs an SunsoftException with the given message and encapsulated exception.
     * @param msg     the exception's detail message
     * @param reason  the encapsulated exception
     */	
	public NavigationRuntimeException(String msg, Throwable reason) {
		super(msg);
		this.reason=reason;
	}
    /**
     * Returns the encapsulated exception, or null if there is none.
     * @return the encapsulated exception
     */
	public Throwable getReason() {
		return reason;
	}
	
    /**
     * Returns a string representation of this exception.
     * @return a string representation of this exception
     */
	public String toString() {
      if ( reason == null )
          return super.toString();
      return super.toString() + " [" + reason + "]";		
	}
	
    /**
     * Prints the stack trace for this (and possibly the encapsulated) exception on
     * System.err.
     */
	public void printStackTrace() {
		printStackTrace( System.err );
	}

    /**
     * Prints the stack trace for this (and possibly the encapsulated) exception on the
     * given print stream.
     */
	public void printStackTrace(java.io.PrintStream s) {
	synchronized (s)
        {
          super.printStackTrace(s);
          if ( reason != null ) {
              s.println(  "/-- Encapsulated exception ------------\\" );
              reason.printStackTrace(s);
              s.println( "\\--------------------------------------/" );
          }
        }
	}

    /**
     * Prints the stack trace for this (and possibly the encapsulated) exception on the
     * given print writer.
     */
	public void printStackTrace(java.io.PrintWriter s) {
	synchronized (s)
        {
          super.printStackTrace(s);
          if ( reason != null ) {
              s.println(  "/-- Encapsulated exception ------------\\" );
              reason.printStackTrace(s);
              s.println( "\\--------------------------------------/" );
          }
        }
	}	
}
