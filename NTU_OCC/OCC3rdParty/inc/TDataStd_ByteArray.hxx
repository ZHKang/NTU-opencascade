// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _TDataStd_ByteArray_HeaderFile
#define _TDataStd_ByteArray_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
#include <Handle_TDataStd_ByteArray.hxx>

#include <Handle_TColStd_HArray1OfByte.hxx>
#include <Standard_Boolean.hxx>
#include <TDF_Attribute.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Byte.hxx>
#include <Handle_TDF_Attribute.hxx>
#include <Handle_TDF_RelocationTable.hxx>
#include <Standard_OStream.hxx>
#include <Handle_TDF_DeltaOnModification.hxx>
class TColStd_HArray1OfByte;
class TDataStd_DeltaOnModificationOfByteArray;
class Standard_GUID;
class TDF_Label;
class TDF_Attribute;
class TDF_RelocationTable;
class TDF_DeltaOnModification;


//! An array of Byte (unsigned char) values.
class TDataStd_ByteArray : public TDF_Attribute
{

public:

  
  //! Static methods
  //! ==============
  //! Returns an ID for array.
  Standard_EXPORT static  const  Standard_GUID& GetID() ;
  
  //! Finds or creates an attribute with the array.
  //! If <isDelta> == False, DefaultDeltaOnModification is used.
  //! If attribute is already set, all input parameters are refused
  //! and the found attribute is returned.
  Standard_EXPORT static   Handle(TDataStd_ByteArray) Set (const TDF_Label& label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta = Standard_False) ;
  
  //! Initialize the inner array with bounds from <lower> to <upper>
  Standard_EXPORT   void Init (const Standard_Integer lower, const Standard_Integer upper) ;
  
  //! Sets the <Index>th element of the array to <Value>
  //! OutOfRange exception is raised if <Index> doesn't respect Lower and Upper bounds of the internal  array.
  Standard_EXPORT   void SetValue (const Standard_Integer index, const Standard_Byte value) ;
  
  //! Return the value of the <Index>th element of the array.
  Standard_EXPORT   Standard_Byte Value (const Standard_Integer Index)  const;
  Standard_Byte operator () (const Standard_Integer Index)  const
{
  return Value(Index);
}
  
  //! Returns the lower boundary of the array.
  Standard_EXPORT   Standard_Integer Lower()  const;
  
  //! Returns the upper boundary of the array.
  Standard_EXPORT   Standard_Integer Upper()  const;
  
  //! Returns the number of elements in the array.
  Standard_EXPORT   Standard_Integer Length()  const;
  
     const  Handle(TColStd_HArray1OfByte) InternalArray()  const;
  
  //! Sets the inner array <myValue>  of the attribute to
  //! <newArray>. If value of <newArray> differs from <myValue>, Backup performed
  //! and myValue refers to new instance of HArray1OfInteger that holds <newArray>
  //! values.
  //! If <isCheckItems> equal True each item of <newArray> will be checked with each
  //! item of <myValue> for coincidence (to avoid backup).
  Standard_EXPORT   void ChangeArray (const Handle(TColStd_HArray1OfByte)& newArray, const Standard_Boolean isCheckItems = Standard_True) ;
  
      Standard_Boolean GetDelta()  const;
  
  //! for internal  use  only!
      void SetDelta (const Standard_Boolean isDelta) ;
  
  Standard_EXPORT TDataStd_ByteArray();
  
  Standard_EXPORT  const  Standard_GUID& ID()  const;
  
  Standard_EXPORT   void Restore (const Handle(TDF_Attribute)& with) ;
  
  Standard_EXPORT   Handle(TDF_Attribute) NewEmpty()  const;
  
  Standard_EXPORT   void Paste (const Handle(TDF_Attribute)& into, const Handle(TDF_RelocationTable)& RT)  const;
  
  Standard_EXPORT virtual   Standard_OStream& Dump (Standard_OStream& OS)  const;
  
  //! Makes a DeltaOnModification between <me> and
  //! <anOldAttribute>.
  Standard_EXPORT virtual   Handle(TDF_DeltaOnModification) DeltaOnModification (const Handle(TDF_Attribute)& anOldAttribute)  const;


friend class TDataStd_DeltaOnModificationOfByteArray;


  DEFINE_STANDARD_RTTI(TDataStd_ByteArray)

protected:




private: 

  
      void RemoveArray() ;

  Handle(TColStd_HArray1OfByte) myValue;
  Standard_Boolean myIsDelta;


};


#include <TDataStd_ByteArray.lxx>





#endif // _TDataStd_ByteArray_HeaderFile
