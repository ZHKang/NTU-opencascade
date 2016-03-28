// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _StepElement_SequenceNodeOfSequenceOfElementMaterial_HeaderFile
#define _StepElement_SequenceNodeOfSequenceOfElementMaterial_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
#include <Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial.hxx>

#include <Handle_StepElement_ElementMaterial.hxx>
#include <TCollection_SeqNode.hxx>
#include <TCollection_SeqNodePtr.hxx>
class StepElement_ElementMaterial;
class StepElement_SequenceOfElementMaterial;



class StepElement_SequenceNodeOfSequenceOfElementMaterial : public TCollection_SeqNode
{

public:

  
    StepElement_SequenceNodeOfSequenceOfElementMaterial(const Handle(StepElement_ElementMaterial)& I, const TCollection_SeqNodePtr& n, const TCollection_SeqNodePtr& p);
  
      Handle(StepElement_ElementMaterial)& Value()  const;




  DEFINE_STANDARD_RTTI(StepElement_SequenceNodeOfSequenceOfElementMaterial)

protected:




private: 


  Handle(StepElement_ElementMaterial) myValue;


};

#define SeqItem Handle(StepElement_ElementMaterial)
#define SeqItem_hxx <StepElement_ElementMaterial.hxx>
#define TCollection_SequenceNode StepElement_SequenceNodeOfSequenceOfElementMaterial
#define TCollection_SequenceNode_hxx <StepElement_SequenceNodeOfSequenceOfElementMaterial.hxx>
#define Handle_TCollection_SequenceNode Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial
#define TCollection_SequenceNode_Type_() StepElement_SequenceNodeOfSequenceOfElementMaterial_Type_()
#define TCollection_Sequence StepElement_SequenceOfElementMaterial
#define TCollection_Sequence_hxx <StepElement_SequenceOfElementMaterial.hxx>

#include <TCollection_SequenceNode.lxx>

#undef SeqItem
#undef SeqItem_hxx
#undef TCollection_SequenceNode
#undef TCollection_SequenceNode_hxx
#undef Handle_TCollection_SequenceNode
#undef TCollection_SequenceNode_Type_
#undef TCollection_Sequence
#undef TCollection_Sequence_hxx




#endif // _StepElement_SequenceNodeOfSequenceOfElementMaterial_HeaderFile