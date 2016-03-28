
// NTU_OCCView.h : CNTU_OCCView 類別的介面
//

#pragma once


class CNTU_OCCView : public CView
{
protected: // 僅從序列化建立
	CNTU_OCCView();
	DECLARE_DYNCREATE(CNTU_OCCView)

// 屬性
public:
	CNTU_OCCDoc* GetDocument() const;

// 作業
public:

// 覆寫
public:
	virtual void OnDraw(CDC* pDC);  // 覆寫以描繪此檢視
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);

// 程式碼實作
public:
	virtual ~CNTU_OCCView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// 產生的訊息對應函式
protected:
	afx_msg void OnFilePrintPreview();
	afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	DECLARE_MESSAGE_MAP()
private:
	Handle_V3d_View myView;
	Standard_Boolean myHlrModeIsOn;
public:
	void FitAll() {   if ( !myView.IsNull() ) myView->FitAll();  myView->ZFitAll(); };
	
};

#ifndef _DEBUG  // NTU_OCCView.cpp 中的偵錯版本
inline CNTU_OCCDoc* CNTU_OCCView::GetDocument() const
   { return reinterpret_cast<CNTU_OCCDoc*>(m_pDocument); }
#endif

