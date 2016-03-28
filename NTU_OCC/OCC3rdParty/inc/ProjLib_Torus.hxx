// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _ProjLib_Torus_HeaderFile
#define _ProjLib_Torus_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <gp_Torus.hxx>
#include <ProjLib_Projector.hxx>
class Standard_NoSuchObject;
class gp_Torus;
class gp_Circ;
class gp_Lin;
class gp_Elips;
class gp_Parab;
class gp_Hypr;


//! Projects elementary curves on a torus.
class ProjLib_Torus  : public ProjLib_Projector
{
public:

  DEFINE_STANDARD_ALLOC

  
  //! Undefined projection.
  Standard_EXPORT ProjLib_Torus();
  
  //! Projection on the torus <To>.
  Standard_EXPORT ProjLib_Torus(const gp_Torus& To);
  
  //! Projection of the circle <C> on the torus <To>.
  Standard_EXPORT ProjLib_Torus(const gp_Torus& To, const gp_Circ& C);
  
  Standard_EXPORT   void Init (const gp_Torus& To) ;
  
  Standard_EXPORT virtual   void Project (const gp_Lin& L) ;
  
  Standard_EXPORT virtual   void Project (const gp_Circ& C) ;
  
  Standard_EXPORT virtual   void Project (const gp_Elips& E) ;
  
  Standard_EXPORT virtual   void Project (const gp_Parab& P) ;
  
  Standard_EXPORT virtual   void Project (const gp_Hypr& H) ;




protected:





private:



  gp_Torus myTorus;


};







#endif // _ProjLib_Torus_HeaderFile