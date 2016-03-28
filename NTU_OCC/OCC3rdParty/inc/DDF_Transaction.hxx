// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _DDF_Transaction_HeaderFile
#define _DDF_Transaction_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
#include <Handle_DDF_Transaction.hxx>

#include <TDF_Transaction.hxx>
#include <MMgt_TShared.hxx>
#include <Handle_TDF_Data.hxx>
#include <Standard_Integer.hxx>
#include <Handle_TDF_Delta.hxx>
#include <Standard_Boolean.hxx>
class Standard_DomainError;
class Standard_NullObject;
class TDF_Data;
class TDF_Delta;


//! This class encapsulates TDF_Transaction.
class DDF_Transaction : public MMgt_TShared
{

public:

  
  //! Creates an empty transaction context, unable to be
  //! opened.
  Standard_EXPORT DDF_Transaction();
  
  //! Creates a transaction context on <aDF>, ready to
  //! be opened.
  Standard_EXPORT DDF_Transaction(const Handle(TDF_Data)& aDF);
  
  //! If not yet done, opens a new transaction on
  //! <myDF>. Returns the index of the just opened
  //! transaction.
  //!
  //! It raises DomainError if the transaction is
  //! already open, and NullObject if there is no
  //! current Data framework.
  Standard_EXPORT   Standard_Integer Open() ;
  
  //! Commits the transactions until AND including the
  //! current opened one.
  Standard_EXPORT   Handle(TDF_Delta) Commit (const Standard_Boolean withDelta = Standard_False) ;
  
  //! Aborts the transactions until AND including the
  //! current opened one.
  Standard_EXPORT   void Abort() ;
~DDF_Transaction()
{
  Abort();
}
  
  //! Returns the Data from TDF.
  Standard_EXPORT   Handle(TDF_Data) Data()  const;
  
  //! Returns the number of the transaction opened by <me>.
  Standard_EXPORT   Standard_Integer Transaction()  const;
  
  //! Returns true if the transaction is open.
  Standard_EXPORT   Standard_Boolean IsOpen()  const;



  DEFINE_STANDARD_RTTI(DDF_Transaction)

protected:




private: 


  TDF_Transaction myTransaction;


};







#endif // _DDF_Transaction_HeaderFile