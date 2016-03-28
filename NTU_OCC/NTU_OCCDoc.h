
// NTU_OCCDoc.h : CNTU_OCCDoc 類別的介面
//


#pragma once
#include <AIS_InteractiveContext.hxx>
#include <V3d_Viewer.hxx>
#include <OCC_3dDoc.h>
#include <ColoredShapes.h>

class CNTU_OCCDoc : public CDocument
{
protected: // 僅從序列化建立
	CNTU_OCCDoc();
	DECLARE_DYNCREATE(CNTU_OCCDoc)

// 屬性
public:

// 作業
public:

// 覆寫
public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
#ifdef SHARED_HANDLERS
	virtual void InitializeSearchContent();
	virtual void OnDrawThumbnail(CDC& dc, LPRECT lprcBounds);
#endif // SHARED_HANDLERS

// 程式碼實作
public:
	virtual ~CNTU_OCCDoc();

#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// 產生的訊息對應函式
protected:
	DECLARE_MESSAGE_MAP()

#ifdef SHARED_HANDLERS
	// 為搜尋處理常式設定搜尋內容的 Helper 函式
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
