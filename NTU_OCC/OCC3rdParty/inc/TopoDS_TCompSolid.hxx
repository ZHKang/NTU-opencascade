// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _TopoDS_TCompSolid_HeaderFile
#define _TopoDS_TCompSolid_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
#include <Handle_TopoDS_TCompSolid.hxx>

#include <TopoDS_TShape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <Handle_TopoDS_TShape.hxx>
class TopoDS_TShape;


//! A set of solids connected by their faces.
class TopoDS_TCompSolid : public TopoDS_TShape
{

public:

  
  //! Creates an empty TCompSolid.
    TopoDS_TCompSolid();
  
  //! returns COMPSOLID
  Standard_EXPORT   TopAbs_ShapeEnum ShapeType()  const;
  
  //! Returns an empty TCompSolid.
  Standard_EXPORT   Handle(TopoDS_TShape) EmptyCopy()  const;




  DEFINE_STANDARD_RTTI(TopoDS_TCompSolid)

protected:




private: 




};


#include <TopoDS_TCompSolid.lxx>





#endif // _TopoDS_TCompSolid_HeaderFile
