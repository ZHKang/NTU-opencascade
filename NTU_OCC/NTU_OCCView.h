
// NTU_OCCView.h : CNTU_OCCView 類別的介面
//

#pragma once

#include <V3d_DirectionalLight.hxx>
#include <V3d_PositionalLight.hxx>
#include <V3d_AmbientLight.hxx>
#include <V3d_SpotLight.hxx>
#include <Graphic3d_ClipPlane.hxx>

enum CurAction3d { 
	CurAction3d_Nothing,
	CurAction3d_DynamicZooming,
	CurAction3d_WindowZooming,
	CurAction3d_DynamicPanning,
	CurAction3d_GlobalPanning,
	CurAction3d_DynamicRotation,
	CurAction3d_BeginSpotLight,
	CurAction3d_TargetSpotLight,
	CurAction3d_EndSpotLight,
	CurAction3d_BeginPositionalLight,
	CurAction3d_BeginDirectionalLight,
	CurAction3d_EndDirectionalLight
};

class CNTU_OCCView : public CView
{
protected: // 僅從序列化建立
	CNTU_OCCView();
	DECLARE_DYNCREATE(CNTU_OCCView)

// 屬性
public:
	CNTU_OCCDoc* GetDocument() const;
	void FitAll() {   if ( !myView.IsNull() ) myView->FitAll();  myView->ZFitAll(); };
	void Redraw() {   if ( !myView.IsNull() ) myView->Redraw(); };
	void SetZoom ( const Quantity_Factor& Coef  ) {   myView->SetZoom ( Coef  );  };
	void GetViewAt (V3d_Coordinate& theX, V3d_Coordinate& theY, V3d_Coordinate& theZ) const;
	void SetViewAt (const V3d_Coordinate theX, const V3d_Coordinate theY, const V3d_Coordinate theZ);
	void GetViewEye (V3d_Coordinate& X, V3d_Coordinate& Y, V3d_Coordinate& Z);
	void SetViewEye (const V3d_Coordinate X,const V3d_Coordinate Y,const V3d_Coordinate Z);
	 Quantity_Factor GetViewScale();
	Handle_V3d_View& GetView() { return myView; }
// 作業
public:

// 覆寫
public:
	virtual void OnDraw(CDC* pDC);  // 覆寫以描繪此檢視
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	//virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	//virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);

// 程式碼實作
public:
	virtual ~CNTU_OCCView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	int scaleX;
	int scaleY;
	int scaleZ;

// 產生的訊息對應函式
protected:
	afx_msg void OnFileExportImage();
	afx_msg void OnSize(UINT nType, int cx, int cy);

	afx_msg void OnFilePrintPreview();
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);

	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnMButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg BOOL OnMouseWheel(UINT nFlags, short zDelta, CPoint pt);
	DECLARE_MESSAGE_MAP()
protected:
	Handle_V3d_View  myView;
	Handle_Graphic3d_GraphicDriver myGraphicDriver;
	CurAction3d      myCurrentMode;
	Standard_Integer myXmin;
	Standard_Integer myYmin;
	Standard_Integer myXmax;
	Standard_Integer myYmax;
	Quantity_Factor  myCurZoom;
	Standard_Integer myWidth;
	Standard_Integer myHeight;
	Standard_Boolean myHlrModeIsOn;
	enum LineStyle { Solid, Dot, ShortDash, LongDash, Default };
	CPen*  m_Pen;

	virtual void DrawRectangle (const Standard_Integer  MinX  ,
		const Standard_Integer  MinY  ,
		const Standard_Integer  MaxX  ,
		const Standard_Integer  MaxY  ,
		const Standard_Boolean  Draw  ,
		const LineStyle aLineStyle = Default  );

};


#ifndef _DEBUG  // NTU_OCCView.cpp 中的偵錯版本
inline CNTU_OCCDoc* CNTU_OCCView::GetDocument() const
   { return reinterpret_cast<CNTU_OCCDoc*>(m_pDocument); }
#endif

