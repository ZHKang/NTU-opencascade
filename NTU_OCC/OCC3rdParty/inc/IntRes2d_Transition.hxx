// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _IntRes2d_Transition_HeaderFile
#define _IntRes2d_Transition_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <Standard_Boolean.hxx>
#include <IntRes2d_Position.hxx>
#include <IntRes2d_TypeTrans.hxx>
#include <IntRes2d_Situation.hxx>
#include <Standard_Storable.hxx>
#include <Standard_PrimitiveTypes.hxx>
class Standard_DomainError;


Standard_EXPORT const Handle(Standard_Type)& STANDARD_TYPE(IntRes2d_Transition);

//! Definition of    the  type  of   transition    near an
//! intersection point between  two curves. The transition
//! is either a "true transition", which means that one of
//! the curves goes inside or outside  the area defined by
//! the other curve  near  the intersection, or  a  "touch
//! transition" which means that the  first curve does not
//! cross  the  other one,  or an  "undecided" transition,
//! which means that the curves are superposed.
class IntRes2d_Transition 
{

public:

  DEFINE_STANDARD_ALLOC

  
  //! Empty constructor.
  Standard_EXPORT IntRes2d_Transition();
  
  //! Creates an IN or OUT transition.
    IntRes2d_Transition(const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_TypeTrans Type);
  
  //! Creates a TOUCH transition.
    IntRes2d_Transition(const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_Situation Situ, const Standard_Boolean Oppos);
  
  //! Creates an UNDECIDED transition.
    IntRes2d_Transition(const IntRes2d_Position Pos);
  
  //! Sets the values of an IN or OUT transition.
      void SetValue (const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_TypeTrans Type) ;
  
  //! Sets the values of a TOUCH transition.
      void SetValue (const Standard_Boolean Tangent, const IntRes2d_Position Pos, const IntRes2d_Situation Situ, const Standard_Boolean Oppos) ;
  
  //! Sets the values of an UNDECIDED transition.
      void SetValue (const IntRes2d_Position Pos) ;
  
  //! Sets the value of the position.
      void SetPosition (const IntRes2d_Position Pos) ;
  
  //! Indicates if the  intersection is at the beginning
  //! (IntRes2d_Head),  at the end (IntRes2d_End), or in
  //! the middle (IntRes2d_Middle) of the curve.
      IntRes2d_Position PositionOnCurve()  const;
  
  //! Returns the type of transition at the intersection.
  //! It may be IN or OUT or TOUCH, or UNDECIDED if the
  //! two first derivatives are not enough to give
  //! the tangent to one of the two curves.
      IntRes2d_TypeTrans TransitionType()  const;
  
  //! Returns TRUE when the 2 curves are tangent at the
  //! intersection point.
  //! Theexception DomainError is raised if the type of
  //! transition is UNDECIDED.
      Standard_Boolean IsTangent()  const;
  
  //! returns a significant value if TransitionType returns
  //! TOUCH. In this case, the function returns :
  //! INSIDE when the curve remains inside the other one,
  //! OUTSIDE when it remains outside the other one,
  //! UNKNOWN when the calculus, based on the second derivatives
  //! cannot give the result.
  //! If TransitionType returns IN or OUT or UNDECIDED, the
  //! exception DomainError is raised.
      IntRes2d_Situation Situation()  const;
  
  //! returns a  significant value   if   TransitionType
  //! returns TOUCH. In this  case, the function returns
  //! true   when  the  2   curves   locally define  two
  //! different  parts of the  space.  If TransitionType
  //! returns  IN or   OUT or UNDECIDED,  the  exception
  //! DomainError is raised.
      Standard_Boolean IsOpposite()  const;
    Standard_Boolean _CSFDB_GetIntRes2d_Transitiontangent() const { return tangent; }
    void _CSFDB_SetIntRes2d_Transitiontangent(const Standard_Boolean p) { tangent = p; }
    IntRes2d_Position _CSFDB_GetIntRes2d_Transitionposit() const { return posit; }
    void _CSFDB_SetIntRes2d_Transitionposit(const IntRes2d_Position p) { posit = p; }
    IntRes2d_TypeTrans _CSFDB_GetIntRes2d_Transitiontypetra() const { return typetra; }
    void _CSFDB_SetIntRes2d_Transitiontypetra(const IntRes2d_TypeTrans p) { typetra = p; }
    IntRes2d_Situation _CSFDB_GetIntRes2d_Transitionsituat() const { return situat; }
    void _CSFDB_SetIntRes2d_Transitionsituat(const IntRes2d_Situation p) { situat = p; }
    Standard_Boolean _CSFDB_GetIntRes2d_Transitionoppos() const { return oppos; }
    void _CSFDB_SetIntRes2d_Transitionoppos(const Standard_Boolean p) { oppos = p; }



protected:




private: 


  Standard_Boolean tangent;
  IntRes2d_Position posit;
  IntRes2d_TypeTrans typetra;
  IntRes2d_Situation situat;
  Standard_Boolean oppos;


};


#include <IntRes2d_Transition.lxx>





#endif // _IntRes2d_Transition_HeaderFile