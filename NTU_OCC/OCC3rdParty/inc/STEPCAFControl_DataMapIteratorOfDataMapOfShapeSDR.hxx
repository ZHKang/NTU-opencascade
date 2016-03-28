// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR_HeaderFile
#define _STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <TCollection_BasicMapIterator.hxx>
#include <Handle_StepShape_ShapeDefinitionRepresentation.hxx>
#include <Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR.hxx>
class Standard_NoSuchObject;
class TopoDS_Shape;
class StepShape_ShapeDefinitionRepresentation;
class TopTools_ShapeMapHasher;
class STEPCAFControl_DataMapOfShapeSDR;
class STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR;



class STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR  : public TCollection_BasicMapIterator
{
public:

  DEFINE_STANDARD_ALLOC

  
  Standard_EXPORT STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR();
  
  Standard_EXPORT STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR(const STEPCAFControl_DataMapOfShapeSDR& aMap);
  
  Standard_EXPORT   void Initialize (const STEPCAFControl_DataMapOfShapeSDR& aMap) ;
  
  Standard_EXPORT  const  TopoDS_Shape& Key()  const;
  
  Standard_EXPORT  const  Handle(StepShape_ShapeDefinitionRepresentation)& Value()  const;




protected:





private:





};







#endif // _STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR_HeaderFile