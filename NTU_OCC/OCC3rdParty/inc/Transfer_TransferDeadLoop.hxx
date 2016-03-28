// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _Transfer_TransferDeadLoop_HeaderFile
#define _Transfer_TransferDeadLoop_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DefineException.hxx>
#include <Standard_SStream.hxx>
#include <Transfer_TransferFailure.hxx>
#include <Handle_Transfer_TransferDeadLoop.hxx>

#if !defined No_Exception && !defined No_Transfer_TransferDeadLoop
  #define Transfer_TransferDeadLoop_Raise_if(CONDITION, MESSAGE) \
  if (CONDITION) Transfer_TransferDeadLoop::Raise(MESSAGE);
#else
  #define Transfer_TransferDeadLoop_Raise_if(CONDITION, MESSAGE)
#endif

DEFINE_STANDARD_EXCEPTION(Transfer_TransferDeadLoop, Transfer_TransferFailure)

#endif // _Transfer_TransferDeadLoop_HeaderFile