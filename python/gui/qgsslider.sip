/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsslider.h                                                  *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/




class QgsSlider : QSlider
{

%TypeHeaderCode
#include "qgsslider.h"
%End
  public:
    QgsSlider( QWidget *parent /TransferThis/ = 0 );
    QgsSlider( Qt::Orientation orientation, QWidget *parent /TransferThis/ = 0 );

    void setMinimum( const QVariant &min );
    void setMaximum( const QVariant &max );
    void setSingleStep( const QVariant &step );
    void setValue( const QVariant &value );
    QVariant variantValue() const;
%Docstring
 :rtype: QVariant
%End

  signals:
    void valueChanged( const QVariant & );

  protected:
    virtual void paintEvent( QPaintEvent *event );

};
/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsslider.h                                                  *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
