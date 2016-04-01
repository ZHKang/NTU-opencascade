
// NTU_OCCDoc.h : CNTU_OCCDoc ���O������
//


#pragma once
#include <AIS_InteractiveContext.hxx>
#include <V3d_Viewer.hxx>
#include <ColoredShapes.h>
#include <OCC_3dDoc.h>

class CNTU_OCCDoc : public CDocument
{
protected: // �ȱq�ǦC�ƫإ�
	CNTU_OCCDoc();
	DECLARE_DYNCREATE(CNTU_OCCDoc)

// �ݩ�
public:

// �@�~
public:

// �мg
public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
#ifdef SHARED_HANDLERS
	virtual void InitializeSearchContent();
	virtual void OnDrawThumbnail(CDC& dc, LPRECT lprcBounds);
#endif // SHARED_HANDLERS

// �{���X��@
public:
	virtual ~CNTU_OCCDoc();

#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// ���ͪ��T�������禡
protected:
	DECLARE_MESSAGE_MAP()

#ifdef SHARED_HANDLERS
	// ���j�M�B�z�`���]�w�j�M���e�� Helper �禡
	void SetSearchContent(const CString& value);
#endif // SHARED_HANDLERS
public:
	Handle(AIS_InteractiveContext) myAISContext; 
	Handle(V3d_Viewer) myViewer;
	Handle(AIS_InteractiveContext)& GetAISContext() { return myAISContext; }
	Handle(V3d_Viewer) GetViewer() { return myViewer; }
	afx_msg void OnImportIges();
	//  Import Files
	//-----------IGES-----------
	static void ReadIGES(const Handle(AIS_InteractiveContext)& anInteractiveContext);
	static Handle(TopTools_HSequenceOfShape) ReadIGES(); // not by reference --> the sequence is created here !!
	static Standard_Integer ReadIGES(const Standard_CString& aFileName,
		Handle(TopTools_HSequenceOfShape)& aHSequenceOfShape);
	//----------STEP------------
	static void ReadSTEP(const Handle(AIS_InteractiveContext)& anInteractiveContext);
	static Handle(TopTools_HSequenceOfShape) ReadSTEP(); // not by reference --> the sequence is created here !!
	static IFSelect_ReturnStatus ReadSTEP(const Standard_CString& aFileName,
		Handle(TopTools_HSequenceOfShape)& aHSequenceOfShape);
	static void Fit();

	//Events
	virtual void DragEvent (const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Standard_Integer /*theState*/,
		const Handle(V3d_View)& /*theView*/) {}

	virtual void InputEvent (const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Handle(V3d_View)& /*theView*/) {}

	virtual void MoveEvent (const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Handle(V3d_View)& /*theView*/) {}

	virtual void ShiftMoveEvent (const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Handle(V3d_View)& /*theView*/) {}

	virtual void ShiftDragEvent (const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Standard_Integer /*theState*/,
		const Handle(V3d_View)& /*theView*/) {}

	virtual void ShiftInputEvent(const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Handle(V3d_View)& /*theView*/) {}

	virtual void Popup (const Standard_Integer /*theMouseX*/,
		const Standard_Integer /*theMouseY*/,
		const Handle(V3d_View)& /*theView*/) {}

protected:
	CColoredShapes* m_pcoloredshapeList;
public:
	afx_msg void OnFileImportStep();
	afx_msg void OnFileImportCSFDB();
	afx_msg void OnFcnLoadatom();
};
