// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors_HeaderFile
#define _MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <TCollection_BasicMapIterator.hxx>
#include <Standard_Integer.hxx>
#include <MeshVS_TwoColors.hxx>
#include <Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors.hxx>
class Standard_NoSuchObject;
class TColStd_MapIntegerHasher;
class MeshVS_DataMapOfIntegerTwoColors;
class MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors;



class MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors  : public TCollection_BasicMapIterator
{
public:

  DEFINE_STANDARD_ALLOC

  
  Standard_EXPORT MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors();
  
  Standard_EXPORT MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors(const MeshVS_DataMapOfIntegerTwoColors& aMap);
  
  Standard_EXPORT   void Initialize (const MeshVS_DataMapOfIntegerTwoColors& aMap) ;
  
  Standard_EXPORT  const  Standard_Integer& Key()  const;
  
  Standard_EXPORT  const  MeshVS_TwoColors& Value()  const;




protected:





private:





};







#endif // _MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors_HeaderFile