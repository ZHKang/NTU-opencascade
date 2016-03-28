// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _StepVisual_Array1OfPresentationStyleAssignment_HeaderFile
#define _StepVisual_Array1OfPresentationStyleAssignment_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <Standard_Integer.hxx>
#include <Standard_Address.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_StepVisual_PresentationStyleAssignment.hxx>
class Standard_RangeError;
class Standard_DimensionMismatch;
class Standard_OutOfRange;
class Standard_OutOfMemory;
class StepVisual_PresentationStyleAssignment;



class StepVisual_Array1OfPresentationStyleAssignment 
{
public:

  DEFINE_STANDARD_ALLOC

  
    StepVisual_Array1OfPresentationStyleAssignment(const Standard_Integer Low, const Standard_Integer Up);
  
    StepVisual_Array1OfPresentationStyleAssignment(const Handle(StepVisual_PresentationStyleAssignment)& Item, const Standard_Integer Low, const Standard_Integer Up);
  
  Standard_EXPORT   void Init (const Handle(StepVisual_PresentationStyleAssignment)& V) ;
  
      void Destroy() ;
~StepVisual_Array1OfPresentationStyleAssignment()
{
  Destroy();
}
  
      Standard_Boolean IsAllocated()  const;
  
  Standard_EXPORT  const  StepVisual_Array1OfPresentationStyleAssignment& Assign (const StepVisual_Array1OfPresentationStyleAssignment& Other) ;
 const  StepVisual_Array1OfPresentationStyleAssignment& operator = (const StepVisual_Array1OfPresentationStyleAssignment& Other) 
{
  return Assign(Other);
}
  
      Standard_Integer Length()  const;
  
      Standard_Integer Lower()  const;
  
      Standard_Integer Upper()  const;
  
      void SetValue (const Standard_Integer Index, const Handle(StepVisual_PresentationStyleAssignment)& Value) ;
  
     const  Handle(StepVisual_PresentationStyleAssignment)& Value (const Standard_Integer Index)  const;
   const  Handle(StepVisual_PresentationStyleAssignment)& operator () (const Standard_Integer Index)  const
{
  return Value(Index);
}
  
      Handle(StepVisual_PresentationStyleAssignment)& ChangeValue (const Standard_Integer Index) ;
    Handle(StepVisual_PresentationStyleAssignment)& operator () (const Standard_Integer Index) 
{
  return ChangeValue(Index);
}




protected:





private:

  
  Standard_EXPORT StepVisual_Array1OfPresentationStyleAssignment(const StepVisual_Array1OfPresentationStyleAssignment& AnArray);


  Standard_Integer myLowerBound;
  Standard_Integer myUpperBound;
  Standard_Address myStart;
  Standard_Boolean isAllocated;


};

#define Array1Item Handle(StepVisual_PresentationStyleAssignment)
#define Array1Item_hxx <StepVisual_PresentationStyleAssignment.hxx>
#define TCollection_Array1 StepVisual_Array1OfPresentationStyleAssignment
#define TCollection_Array1_hxx <StepVisual_Array1OfPresentationStyleAssignment.hxx>

#include <TCollection_Array1.lxx>

#undef Array1Item
#undef Array1Item_hxx
#undef TCollection_Array1
#undef TCollection_Array1_hxx




#endif // _StepVisual_Array1OfPresentationStyleAssignment_HeaderFile