
// NTU_OCCView.h : CNTU_OCCView ���O������
//

#pragma once


class CNTU_OCCView : public CView
{
protected: // �ȱq�ǦC�ƫإ�
	CNTU_OCCView();
	DECLARE_DYNCREATE(CNTU_OCCView)

// �ݩ�
public:
	CNTU_OCCDoc* GetDocument() const;

// �@�~
public:

// �мg
public:
	virtual void OnDraw(CDC* pDC);  // �мg�H�yø���˵�
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);

// �{���X��@
public:
	virtual ~CNTU_OCCView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// ���ͪ��T�������禡
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

#ifndef _DEBUG  // NTU_OCCView.cpp ������������
inline CNTU_OCCDoc* CNTU_OCCView::GetDocument() const
   { return reinterpret_cast<CNTU_OCCDoc*>(m_pDocument); }
#endif

