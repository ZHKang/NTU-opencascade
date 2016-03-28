// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _PDataStd_FieldOfHArray1OfHArray1OfInteger_HeaderFile
#define _PDataStd_FieldOfHArray1OfHArray1OfInteger_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <DBC_BaseArray.hxx>
#include <Handle_PColStd_HArray1OfInteger.hxx>
#include <Handle_PDataStd_VArrayNodeOfFieldOfHArray1OfHArray1OfInteger.hxx>
#include <Standard_Integer.hxx>
#include <Standard_PrimitiveTypes.hxx>
class Standard_NegativeValue;
class Standard_OutOfRange;
class Standard_DimensionMismatch;
class Standard_NullObject;
class PColStd_HArray1OfInteger;
class PDataStd_VArrayNodeOfFieldOfHArray1OfHArray1OfInteger;
class PDataStd_VArrayTNodeOfFieldOfHArray1OfHArray1OfInteger;



Standard_EXPORT const Handle(Standard_Type)& STANDARD_TYPE(PDataStd_FieldOfHArray1OfHArray1OfInteger);


class PDataStd_FieldOfHArray1OfHArray1OfInteger  : public DBC_BaseArray
{

public:

  DEFINE_STANDARD_ALLOC

  
  Standard_EXPORT PDataStd_FieldOfHArray1OfHArray1OfInteger();
  
  Standard_EXPORT PDataStd_FieldOfHArray1OfHArray1OfInteger(const Standard_Integer Size);
  
  Standard_EXPORT PDataStd_FieldOfHArray1OfHArray1OfInteger(const PDataStd_FieldOfHArray1OfHArray1OfInteger& Varray);
  
  Standard_EXPORT   void Resize (const Standard_Integer Size) ;
  
  Standard_EXPORT   void Assign (const PDataStd_FieldOfHArray1OfHArray1OfInteger& Other) ;
  void operator = (const PDataStd_FieldOfHArray1OfHArray1OfInteger& Other) 
{
  Assign(Other);
}
  
  Standard_EXPORT   void SetValue (const Standard_Integer Index, const Handle(PColStd_HArray1OfInteger)& Value) ;
  
  Standard_EXPORT   Handle(PColStd_HArray1OfInteger)& Value (const Standard_Integer Index)  const;
  Handle(PColStd_HArray1OfInteger)& operator () (const Standard_Integer Index)  const
{
  return Value(Index);
}
  
  Standard_EXPORT   void Destroy() ;
~PDataStd_FieldOfHArray1OfHArray1OfInteger()
{
  Destroy();
}



protected:




private: 

#ifdef CSFDB
// DBC_VArray : field
//
#endif



};







#endif // _PDataStd_FieldOfHArray1OfHArray1OfInteger_HeaderFile