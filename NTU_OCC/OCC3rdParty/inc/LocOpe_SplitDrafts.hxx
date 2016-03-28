// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _LocOpe_SplitDrafts_HeaderFile
#define _LocOpe_SplitDrafts_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <TopoDS_Shape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <Standard_Real.hxx>
#include <Standard_Boolean.hxx>
class StdFail_NotDone;
class Standard_NoSuchObject;
class Standard_ConstructionError;
class Standard_NullObject;
class TopoDS_Shape;
class TopoDS_Face;
class TopoDS_Wire;
class gp_Dir;
class gp_Pln;
class TopTools_ListOfShape;


//! This  class  provides  a    tool to   realize  the
//! following operations on a shape :
//! - split a face of the shape with a wire,
//! - put draft angle on both side of the wire.
//! For each side, the draft angle may be different.
class LocOpe_SplitDrafts 
{
public:

  DEFINE_STANDARD_ALLOC

  
  //! Empty constructor.
    LocOpe_SplitDrafts();
  
  //! Creates the algoritm on the shape <S>.
    LocOpe_SplitDrafts(const TopoDS_Shape& S);
  
  //! Initializes the algoritm with the shape <S>.
  Standard_EXPORT   void Init (const TopoDS_Shape& S) ;
  
  //! Splits the face <F> of the former given shape with
  //! the wire  <W>.  The wire is  assumed to lie on the
  //! face.    Puts a draft  angle on  both parts of the
  //! wire.    <Extractg>,  <Nplg>, <Angleg> define  the
  //! arguments  for   the   left  part   of the   wire.
  //! <Extractd>,  <Npld>, <Angled> define the arguments
  //! for the right part of the wire. The draft angle is
  //! measured    with the  direction  <Extract>.  <Npl>
  //! defines the neutral plane (points belonging to the
  //! neutral plane are not  modified).  <Angle> is  the
  //! value of the draft  angle.  If <ModifyLeft> is set
  //! to <Standard_False>, no draft  angle is applied to
  //! the left part of the wire. If <ModifyRight> is set
  //! to <Standard_False>,no draft  angle  is applied to
  //! the right part of the wire.
  Standard_EXPORT   void Perform (const TopoDS_Face& F, const TopoDS_Wire& W, const gp_Dir& Extractg, const gp_Pln& NPlg, const Standard_Real Angleg, const gp_Dir& Extractd, const gp_Pln& NPld, const Standard_Real Angled, const Standard_Boolean ModifyLeft = Standard_True, const Standard_Boolean ModifyRight = Standard_True) ;
  
  //! Splits the face <F> of the former given shape with
  //! the  wire <W>.  The wire is  assumed to lie on the
  //! face.  Puts a draft angle  on the left part of the
  //! wire.   The draft    angle is   measured  with the
  //! direction  <Extract>.   <Npl> defines the  neutral
  //! plane (points belonging  to the neutral plane  are
  //! not modified). <Angle> is  the value of  the draft
  //! angle.
  Standard_EXPORT   void Perform (const TopoDS_Face& F, const TopoDS_Wire& W, const gp_Dir& Extract, const gp_Pln& NPl, const Standard_Real Angle) ;
  
  //! Returns <Standard_True>  if the  modification  has
  //! been succesfully performed.
      Standard_Boolean IsDone()  const;
  
     const  TopoDS_Shape& OriginalShape()  const;
  
  //! Returns the modified shape.
  Standard_EXPORT  const  TopoDS_Shape& Shape()  const;
  
  //! Manages the descendant shapes.
  Standard_EXPORT  const  TopTools_ListOfShape& ShapesFromShape (const TopoDS_Shape& S)  const;




protected:





private:



  TopoDS_Shape myShape;
  TopoDS_Shape myResult;
  TopTools_DataMapOfShapeListOfShape myMap;


};


#include <LocOpe_SplitDrafts.lxx>





#endif // _LocOpe_SplitDrafts_HeaderFile