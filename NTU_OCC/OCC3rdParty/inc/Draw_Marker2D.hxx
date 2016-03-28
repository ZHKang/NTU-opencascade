// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _Draw_Marker2D_HeaderFile
#define _Draw_Marker2D_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
#include <Handle_Draw_Marker2D.hxx>

#include <gp_Pnt2d.hxx>
#include <Draw_Color.hxx>
#include <Draw_MarkerShape.hxx>
#include <Standard_Integer.hxx>
#include <Draw_Drawable2D.hxx>
#include <Standard_Real.hxx>
#include <Standard_Boolean.hxx>
class gp_Pnt2d;
class Draw_Color;
class Draw_Display;



class Draw_Marker2D : public Draw_Drawable2D
{

public:

  
  Standard_EXPORT Draw_Marker2D(const gp_Pnt2d& P, const Draw_MarkerShape T, const Draw_Color& C, const Standard_Integer Size = 5);
  
  Standard_EXPORT Draw_Marker2D(const gp_Pnt2d& P, const Draw_MarkerShape T, const Draw_Color& C, const Standard_Real RSize);
  
  //! myPos field
  Standard_EXPORT   gp_Pnt2d& ChangePos() ;
  
  Standard_EXPORT   void DrawOn (Draw_Display& dis)  const;
  
  //! Returs always false
  Standard_EXPORT virtual   Standard_Boolean PickReject (const Standard_Real X, const Standard_Real Y, const Standard_Real Prec)  const;




  DEFINE_STANDARD_RTTI(Draw_Marker2D)

protected:




private: 


  gp_Pnt2d myPos;
  Draw_Color myCol;
  Draw_MarkerShape myTyp;
  Standard_Integer mySiz;


};







#endif // _Draw_Marker2D_HeaderFile