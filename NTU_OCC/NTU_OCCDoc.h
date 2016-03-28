
// NTU_OCCDoc.h : CNTU_OCCDoc ���O������
//


#pragma once
#include <AIS_InteractiveContext.hxx>
#include <V3d_Viewer.hxx>
#include <OCC_3dDoc.h>
#include <ColoredShapes.h>

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

	static void ReadIGES(const Handle(AIS_InteractiveContext)& anInteractiveContext);
	static Handle(TopTools_HSequenceOfShape) ReadIGES(); // not by reference --> the sequence is created here !!
	static Standard_Integer ReadIGES(const Standard_CString& aFileName,
		Handle(TopTools_HSequenceOfShape)& aHSequenceOfShape);
	static void Fit();

protected:
	CColoredShapes* m_pcoloredshapeList;
};
