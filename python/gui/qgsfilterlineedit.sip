/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsfilterlineedit.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsFilterLineEdit : QLineEdit
{
%Docstring
 QLineEdit subclass with built in support for clearing the widget's value and
 handling custom null value representations.

 When using QgsFilterLineEdit the value(), setValue() and clearValue() methods should be used
 instead of QLineEdit's text(), setText() and clear() methods, and the valueChanged()
 signal should be used instead of textChanged().
*
%End

%TypeHeaderCode
#include "qgsfilterlineedit.h"
%End

%ConvertToSubClassCode
    if ( qobject_cast<QgsFilterLineEdit *>( sipCpp ) )
      sipType = sipType_QgsFilterLineEdit;
    else
      sipType = NULL;
%End
  public:

    enum ClearMode
    {
      ClearToNull,
      ClearToDefault,
    };

    QgsFilterLineEdit( QWidget *parent /TransferThis/ = 0, const QString &nullValue = QString() );
%Docstring
 Constructor for QgsFilterLineEdit.
 \param parent parent widget
 \param nullValue string for representing null values
%End

    bool showClearButton() const;
%Docstring
 Returns true if the widget's clear button is visible.
.. seealso:: setShowClearButton()
.. versionadded:: 3.0
 :rtype: bool
%End

    void setShowClearButton( bool visible );
%Docstring
 Sets whether the widget's clear button is visible.
 \param visible set to false to hide the clear button
.. seealso:: showClearButton()
.. versionadded:: 3.0
%End

    ClearMode clearMode() const;
%Docstring
 Returns the clear mode for the widget. The clear mode defines the behavior of the
 widget when its value is cleared. This defaults to ClearToNull.
.. seealso:: setClearMode()
.. versionadded:: 3.0
 :rtype: ClearMode
%End

    void setClearMode( ClearMode mode );
%Docstring
 Sets the clear mode for the widget. The clear mode defines the behavior of the
 widget when its value is cleared. This defaults to ClearToNull.
.. seealso:: clearMode()
.. versionadded:: 3.0
%End

    void setNullValue( const QString &nullValue );
%Docstring
 Sets the string representation for null values in the widget. This does not
 affect the values returned for null values by value(), rather it only affects
 the text that is shown to users when the widget's value is null.
 \param nullValue string to show when widget's value is null
.. seealso:: nullValue()
%End

    QString nullValue() const;
%Docstring
 Returns the string used for representating null values in the widget.
.. seealso:: setNullValue()
.. seealso:: isNull()
 :rtype: str
%End

    void setShowSearchIcon( bool visible );
%Docstring
 Define if a search icon shall be shown on the left of the image
 when no text is entered
 \param visible set to false to hide the search icon
.. versionadded:: 3.0
%End

    bool showSearchIcon() const;
%Docstring
 Returns if a search icon shall be shown on the left of the image
 when no text is entered
.. versionadded:: 3.0
 :rtype: bool
%End

    void setDefaultValue( const QString &defaultValue );
%Docstring
 Sets the default value for the widget. The default value is a value
 which the widget will be reset to if it is cleared and the clearMode()
 is equal to ClearToDefault.
 \param defaultValue default value
.. seealso:: defaultValue()
.. seealso:: clearMode()
.. versionadded:: 3.0
%End

    QString defaultValue() const;
%Docstring
 Returns the default value for the widget. The default value is a value
 which the widget will be reset to if it is cleared and the clearMode()
 is equal to ClearToDefault.
.. seealso:: setDefaultValue()
.. seealso:: clearMode()
.. versionadded:: 3.0
 :rtype: str
%End

    void setValue( const QString &value );
%Docstring
 Sets the current text for the widget with support for handling null values.

 \param value The text to set. If a null string is provided, the text shown in the
 widget will be set to the current nullValue().
.. seealso:: value()
%End

    QString value() const;
%Docstring
 Returns the text of this edit with support for handling null values. If the text
 in the widget matches the current nullValue() then the returned value will be
 a null string.

 :return: Current text (or null string if it matches the nullValue() property )
.. seealso:: setValue()
 :rtype: str
%End

    bool isNull() const;
%Docstring
 Determine if the current text represents null.

 :return: True if the widget's value is null.
.. seealso:: nullValue()
 :rtype: bool
%End

  public slots:

    virtual void clearValue();
%Docstring
 Clears the widget and resets it to the null value.
.. seealso:: nullValue()
.. versionadded:: 3.0
%End

  signals:

    void cleared();
%Docstring
 Emitted when the widget is cleared
.. seealso:: clearValue()
%End

    void valueChanged( const QString &value );
%Docstring
 Same as textChanged() but with support for null values.

 \param value The current text or null string if it matches the nullValue() property.
%End

  protected:
    virtual void mousePressEvent( QMouseEvent *e );

    virtual void mouseMoveEvent( QMouseEvent *e );

    virtual void focusInEvent( QFocusEvent *e );

    virtual void paintEvent( QPaintEvent *e );

    virtual void leaveEvent( QEvent *e );


};



/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsfilterlineedit.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
