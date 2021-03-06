// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _TDF_ListIteratorOfDeltaList_HeaderFile
#define _TDF_ListIteratorOfDeltaList_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Macro.hxx>

#include <Standard_Address.hxx>
#include <Handle_TDF_Delta.hxx>
#include <Handle_TDF_ListNodeOfDeltaList.hxx>
#include <Standard_Boolean.hxx>
class Standard_NoMoreObject;
class Standard_NoSuchObject;
class TDF_DeltaList;
class TDF_Delta;
class TDF_ListNodeOfDeltaList;



class TDF_ListIteratorOfDeltaList 
{
public:

  DEFINE_STANDARD_ALLOC

  
  Standard_EXPORT TDF_ListIteratorOfDeltaList();
  
  Standard_EXPORT TDF_ListIteratorOfDeltaList(const TDF_DeltaList& L);
  
  Standard_EXPORT   void Initialize (const TDF_DeltaList& L) ;
  
      Standard_Boolean More()  const;
  
  Standard_EXPORT   void Next() ;
  
  Standard_EXPORT   Handle(TDF_Delta)& Value()  const;


friend class TDF_DeltaList;


protected:





private:



  Standard_Address current;
  Standard_Address previous;


};

#define Item Handle(TDF_Delta)
#define Item_hxx <TDF_Delta.hxx>
#define TCollection_ListNode TDF_ListNodeOfDeltaList
#define TCollection_ListNode_hxx <TDF_ListNodeOfDeltaList.hxx>
#define TCollection_ListIterator TDF_ListIteratorOfDeltaList
#define TCollection_ListIterator_hxx <TDF_ListIteratorOfDeltaList.hxx>
#define Handle_TCollection_ListNode Handle_TDF_ListNodeOfDeltaList
#define TCollection_ListNode_Type_() TDF_ListNodeOfDeltaList_Type_()
#define TCollection_List TDF_DeltaList
#define TCollection_List_hxx <TDF_DeltaList.hxx>

#include <TCollection_ListIterator.lxx>

#undef Item
#undef Item_hxx
#undef TCollection_ListNode
#undef TCollection_ListNode_hxx
#undef TCollection_ListIterator
#undef TCollection_ListIterator_hxx
#undef Handle_TCollection_ListNode
#undef TCollection_ListNode_Type_
#undef TCollection_List
#undef TCollection_List_hxx




#endif // _TDF_ListIteratorOfDeltaList_HeaderFile
