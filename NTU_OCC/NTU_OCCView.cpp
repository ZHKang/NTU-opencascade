
// NTU_OCCView.cpp : CNTU_OCCView 類別的實作
//

#include "stdafx.h"
// SHARED_HANDLERS 可以定義在實作預覽、縮圖和搜尋篩選條件處理常式的
// ATL 專案中，並允許與該專案共用文件程式碼。
#ifndef SHARED_HANDLERS
#include "NTU_OCC.h"
#endif

#include "NTU_OCCDoc.h"
#include "NTU_OCCView.h"

#ifdef _DEBUG
//#define new DEBUG_NEW
#endif


// CNTU_OCCView

IMPLEMENT_DYNCREATE(CNTU_OCCView, CView)

BEGIN_MESSAGE_MAP(CNTU_OCCView, CView)
	// 標準列印命令
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CNTU_OCCView::OnFilePrintPreview)
	ON_WM_CONTEXTMENU()
	ON_WM_RBUTTONUP()
	ON_WM_MOUSEMOVE()
END_MESSAGE_MAP()

// CNTU_OCCView 建構/解構

CNTU_OCCView::CNTU_OCCView()
{
	// TODO: 在此加入建構程式碼

}

CNTU_OCCView::~CNTU_OCCView()
{
}

BOOL CNTU_OCCView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: 在此經由修改 CREATESTRUCT cs 
	// 達到修改視窗類別或樣式的目的

	return CView::PreCreateWindow(cs);
}

// CNTU_OCCView 描繪

void CNTU_OCCView::OnDraw(CDC* /*pDC*/)
{
	CNTU_OCCDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	if (!pDoc)
		return;
	myView->MustBeResized();  
	myView->Update();  
	// TODO: 在此加入原生資料的描繪程式碼
}


// CNTU_OCCView 列印


void CNTU_OCCView::OnFilePrintPreview()
{
#ifndef SHARED_HANDLERS
	AFXPrintPreview(this);
#endif
}

/////////////////////////////////////////////////////////////////////////////
// OCC_3dView drawing
void CNTU_OCCView::OnInitialUpdate() 
{
	CView::OnInitialUpdate();
	myView=GetDocument()->GetViewer()->CreateView();  
	myView->SetShadingModel(V3d_GOURAUD);
	Handle(Graphic3d_GraphicDriver) theGraphicDriver = ((CNTU_OCCApp*)AfxGetApp())->GetGraphicDriver();  
	Aspect_Handle aWindowHandle = (Aspect_Handle)GetSafeHwnd();  
	Handle(WNT_Window) aWntWindow=new WNT_Window(GetSafeHwnd());  
	myView->SetWindow(aWntWindow);  
	if(!aWntWindow->IsMapped()){  
		aWntWindow->Map();  
	} 

	Standard_Integer w=50;  
	Standard_Integer h=50;  
	aWntWindow->Size(w,h);  
	::PostMessage(GetSafeHwnd(),WM_SIZE,SIZE_RESTORED,w+h*65536);  
	myView->FitAll();  
	myView->ZBufferTriedronSetup(Quantity_NOC_RED,Quantity_NOC_GREEN,Quantity_NOC_BLUE1,0.8,0.05,12);  
	myView->TriedronDisplay(Aspect_TOTP_LEFT_LOWER,Quantity_NOC_WHITE,0.2,V3d_ZBUFFER);

}

BOOL CNTU_OCCView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// 預設的準備列印程式碼
	return DoPreparePrinting(pInfo);
}

void CNTU_OCCView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 加入列印前額外的初始設定
}

void CNTU_OCCView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 加入列印後的清除程式碼
}

void CNTU_OCCView::OnRButtonUp(UINT /* nFlags */, CPoint point)
{
	ClientToScreen(&point);
	OnContextMenu(this, point);
}

void CNTU_OCCView::OnContextMenu(CWnd* /* pWnd */, CPoint point)
{
#ifndef SHARED_HANDLERS
	theApp.GetContextMenuManager()->ShowPopupMenu(IDR_POPUP_EDIT, point.x, point.y, this, TRUE);
#endif
}

void CNTU_OCCView::OnMouseMove(UINT nFlags, CPoint point)  
{  
	// TODO: Add your message handler code here and/or call default  
	CView::OnMouseMove(nFlags, point);  
	if(nFlags && MK_LBUTTON){  
		myView->Rotate(point.x,point.y);
		myView->Rotation(point.x,point.y);
	}  
}  

// CNTU_OCCView 診斷

#ifdef _DEBUG
void CNTU_OCCView::AssertValid() const
{
	CView::AssertValid();
}

void CNTU_OCCView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CNTU_OCCDoc* CNTU_OCCView::GetDocument() const // 內嵌非偵錯版本
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CNTU_OCCDoc)));
	return (CNTU_OCCDoc*)m_pDocument;
}
#endif //_DEBUG


// CNTU_OCCView 訊息處理常式
