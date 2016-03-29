
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

#include <Visual3d_View.hxx>

#include <Graphic3d_ExportFormat.hxx>
#include <Graphic3d_Camera.hxx>

#include <OpenGl_GraphicDriver.hxx>

#define ValZWMin 1
#define X_Key 0x58
#define Y_Key 0x59
#define Z_Key 0x5A

#define ModelClipping

#ifdef _DEBUG
//#define new DEBUG_NEW
#endif


// CNTU_OCCView

IMPLEMENT_DYNCREATE(CNTU_OCCView, CView)

BEGIN_MESSAGE_MAP(CNTU_OCCView, CView)
	ON_WM_SIZE()
	ON_COMMAND(ID_FILE_EXPORT_IMAGE, OnFileExportImage)
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CNTU_OCCView::OnFilePrintPreview)
	ON_WM_CONTEXTMENU()
	ON_WM_MOUSEMOVE()
	ON_WM_RBUTTONDOWN()
	ON_WM_RBUTTONUP()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MBUTTONDOWN()
	ON_WM_MBUTTONUP()
	ON_WM_MOUSEWHEEL()
END_MESSAGE_MAP()

// CNTU_OCCView 建構/解構

CNTU_OCCView::CNTU_OCCView()
: myCurrentMode (CurAction3d_Nothing),
	myXmin (0),
	myYmin (0),
	myXmax (0),
	myYmax (0),
	myCurZoom (0.0),
	myWidth  (0),
	myHeight (0),
	myHlrModeIsOn (Standard_False),
	m_Pen (NULL)
{
	// TODO: 在此加入建構程式碼

}

CNTU_OCCView::~CNTU_OCCView()
{
	myView->Remove();
	if (m_Pen) delete m_Pen;
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
	//CNTU_OCCDoc* pDoc = GetDocument();
	//ASSERT_VALID(pDoc);
	//if (!pDoc)
	//	return;
	// TODO: 在此加入原生資料的描繪程式碼
	CRect aRect;
	GetWindowRect(aRect);
	if(myWidth != aRect.Width() || myHeight != aRect.Height()) {
		myWidth = aRect.Width();
		myHeight = aRect.Height();
		::PostMessage ( GetSafeHwnd () , WM_SIZE , SW_SHOW , myWidth + myHeight*65536 );
	}
	myView->Redraw();
}


// CNTU_OCCView 列印


void CNTU_OCCView::OnFilePrintPreview()
{
#ifndef SHARED_HANDLERS
	AFXPrintPreview(this);
#endif
}

/////////////////////////////////////////////////////////////////////////////
// CNTU_OCCView drawing
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
	myView->SetBgGradientColors(Quantity_NOC_SKYBLUE,Quantity_NOC_SNOW2,Aspect_GFM_VER);
	//myView->SetSurfaceDetail(V3d_TEX_ALL);
	myView->FitAll();
	myView->ZBufferTriedronSetup(Quantity_NOC_RED,Quantity_NOC_GREEN,Quantity_NOC_BLUE1,0.8,0.05,12);  
	myView->TriedronDisplay(Aspect_TOTP_LEFT_LOWER,Quantity_NOC_WHITE,0.2,V3d_ZBUFFER);
}

/////////////////////////////////////////////////////////////////////////////
// CNTU_OCCView message handlers
void CNTU_OCCView::OnFileExportImage()
{
	//GetDocument()->ExportView (myView);
}

void CNTU_OCCView::OnSize(UINT /*nType*/, int /*cx*/, int /*cy*/) 
{
	if (!myView.IsNull())
		myView->MustBeResized();
}



BOOL CNTU_OCCView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// 預設的準備列印程式碼
	return DoPreparePrinting(pInfo);
}

//void CNTU_OCCView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
//{
//	// TODO: 加入列印前額外的初始設定
//}
//
//void CNTU_OCCView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
//{
//	// TODO: 加入列印後的清除程式碼
//}

void CNTU_OCCView::OnContextMenu(CWnd* /* pWnd */, CPoint point)
{
#ifndef SHARED_HANDLERS
	theApp.GetContextMenuManager()->ShowPopupMenu(IDR_POPUP_EDIT, point.x, point.y, this, TRUE);
#endif
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

void CNTU_OCCView::OnLButtonDown(UINT nFlags, CPoint point) 
{
	//  save the current mouse coordinate in min 
	myXmin=point.x;  myYmin=point.y;
	myXmax=point.x;  myYmax=point.y;

	if ( nFlags & MK_CONTROL ) 
	{
		// Button MB1 down Control :start zomming 
		// SetCursor(AfxGetApp()->LoadStandardCursor());
	}
	else // if ( Ctrl )
	{
		switch (myCurrentMode)
		{
		case CurAction3d_Nothing : // start a drag
			if (nFlags & MK_SHIFT)
				GetDocument()->ShiftDragEvent(myXmax,myYmax,-1,myView);
			else
				GetDocument()->DragEvent(myXmax,myYmax,-1,myView);
			break;
			break;
		case CurAction3d_DynamicZooming : // noting
			break;
		case CurAction3d_WindowZooming : // noting
			break;
		case CurAction3d_DynamicPanning :// noting
			break;
		case CurAction3d_GlobalPanning :// noting
			break;
		case  CurAction3d_DynamicRotation :
			if (myHlrModeIsOn)
			{
				myView->SetComputedMode (Standard_False);
			}

			myView->StartRotation(point.x,point.y);  
			break;
		default :
			Standard_Failure::Raise(" incompatible Current Mode ");
			break;
		}
	}
}

void CNTU_OCCView::OnLButtonUp(UINT nFlags, CPoint point) 
{
	if ( nFlags & MK_CONTROL ) 
	{
		return;
	}
	else // if ( Ctrl )
	{
		switch (myCurrentMode)
		{
		case CurAction3d_Nothing :
			if (point.x == myXmin && point.y == myYmin)
			{ // no offset between down and up --> selectEvent
				myXmax=point.x;  
				myYmax=point.y;
				if (nFlags & MK_SHIFT )
					GetDocument()->ShiftInputEvent(point.x,point.y,myView);
				else
					GetDocument()->InputEvent     (point.x,point.y,myView);
			} else
			{
				myXmax=point.x;    myYmax=point.y;
				DrawRectangle(myXmin,myYmin,myXmax,myYmax,Standard_False);
				if (nFlags & MK_SHIFT)
					GetDocument()->ShiftDragEvent(point.x,point.y,1,myView);
				else
					GetDocument()->DragEvent(point.x,point.y,1,myView);
			}
			break;
		case CurAction3d_DynamicZooming :
			myCurrentMode = CurAction3d_Nothing;
			break;
		case CurAction3d_WindowZooming :
			myXmax=point.x;        myYmax=point.y;
			DrawRectangle(myXmin,myYmin,myXmax,myYmax,Standard_False);
			if ((abs(myXmin-myXmax)>ValZWMin) || (abs(myYmin-myYmax)>ValZWMin))
				// Test if the zoom window is greater than a minimale window.
			{
				// Do the zoom window between Pmin and Pmax
				myView->WindowFitAll(myXmin,myYmin,myXmax,myYmax);  
			}  
			myCurrentMode = CurAction3d_Nothing;
			break;
		case CurAction3d_DynamicPanning :
			myCurrentMode = CurAction3d_Nothing;
			break;
		case CurAction3d_GlobalPanning :
			myView->Place(point.x,point.y,myCurZoom); 
			myCurrentMode = CurAction3d_Nothing;
			break;
		case  CurAction3d_DynamicRotation :
			myCurrentMode = CurAction3d_Nothing;
			if (myHlrModeIsOn)
			{
				CWaitCursor aWaitCursor;
				myView->SetComputedMode (myHlrModeIsOn);
			}
			else
			{
				myView->SetComputedMode (myHlrModeIsOn);
			}
			break;
		default :
			Standard_Failure::Raise(" incompatible Current Mode ");
			break;
		} //switch (myCurrentMode)
	} //	else // if ( Ctrl )
}

void CNTU_OCCView::OnMButtonDown(UINT nFlags, CPoint /*point*/) 
{
	if ( nFlags & MK_CONTROL ) 
	{
		// Button MB2 down Control : panning init  
		// SetCursor(AfxGetApp()->LoadStandardCursor());   
	}
}

void CNTU_OCCView::OnMButtonUp(UINT nFlags, CPoint /*point*/) 
{
	if ( nFlags & MK_CONTROL ) 
	{
		// Button MB2 down Control : panning init  
		// SetCursor(AfxGetApp()->LoadStandardCursor());   
	}
}

void CNTU_OCCView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	if ( nFlags & MK_CONTROL )
	{
		if (myHlrModeIsOn)
		{
			myView->SetComputedMode (Standard_False);
		}
		myView->StartRotation(point.x,point.y);  
	}
	else // if ( Ctrl )
	{
		GetDocument()->Popup(point.x,point.y,myView);
	}	
}

void CNTU_OCCView::OnRButtonUp(UINT /*nFlags*/, CPoint /*point*/) 
{
	SetCursor(AfxGetApp()->LoadStandardCursor(IDC_WAIT));
	myView->SetComputedMode (myHlrModeIsOn);
	SetCursor(AfxGetApp()->LoadStandardCursor(IDC_ARROW));
}

void CNTU_OCCView::OnMouseMove(UINT nFlags, CPoint point) 
{
	//   ============================  LEFT BUTTON =======================
	if ( nFlags & MK_LBUTTON)
	{
		if ( nFlags & MK_CONTROL ) 
		{
			// move with MB1 and Control : on the dynamic zooming  
			// Do the zoom in function of mouse's coordinates  
			myView->Zoom(myXmax,myYmax,point.x,point.y); 
			// save the current mouse coordinate in min 
			myXmax = point.x; 
			myYmax = point.y;	
		}
		else // if ( Ctrl )
		{
			switch (myCurrentMode)
			{
			case CurAction3d_Nothing :
				DrawRectangle(myXmin,myYmin,myXmax,myYmax,Standard_False);
				myXmax = point.x;
				myYmax = point.y;

				if (nFlags & MK_SHIFT)
					GetDocument()->ShiftDragEvent(myXmax,myYmax,0,myView);
				else
					GetDocument()->DragEvent(myXmax,myYmax,0,myView);
				DrawRectangle(myXmin,myYmin,myXmax,myYmax,Standard_True);
				break;
			default :
				Standard_Failure::Raise(" incompatible Current Mode ");
				break;
			}//  switch (myCurrentMode)
		}// if ( nFlags & MK_CONTROL )  else 
	} 
	else if ( nFlags & MK_MBUTTON)
	{
		if ( nFlags & MK_CONTROL ) 
		{
			myView->Pan(point.x-myXmax,myYmax-point.y); // Realize the panning
			myXmax = point.x; myYmax = point.y;	

		}
	} 
	else if ( nFlags & MK_RBUTTON)
	{
		if ( nFlags & MK_CONTROL ) 
		{
			myView->Rotation(point.x,point.y);
		}
	}
	else 
	{  // No buttons 
		myXmax = point.x; myYmax = point.y;	
		if (nFlags & MK_SHIFT)
			GetDocument()->ShiftMoveEvent(point.x,point.y,myView);
		else
			GetDocument()->MoveEvent(point.x,point.y,myView);
	}
}



BOOL CNTU_OCCView::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt)
{
	// TODO: 在此加入您的訊息處理常式程式碼和 (或) 呼叫預設值
	Standard_Integer cZoomStep = 20;
	myCurZoom = myView->Scale();
	myXmax = pt.x + zDelta/cZoomStep;
	myYmax = pt.y + zDelta/cZoomStep;
	if (myYmax < 0)    myYmax = 0;
	if (myXmax < 0)    myYmax = 0;
	myView->Zoom(myXmax,myYmax,pt.x,pt.y);
	return CView::OnMouseWheel(nFlags, zDelta, pt);
}


void CNTU_OCCView::DrawRectangle(const Standard_Integer  MinX    ,
	const Standard_Integer  MinY    ,
	const Standard_Integer  MaxX ,
	const Standard_Integer  MaxY ,
	const Standard_Boolean  Draw , 
	const LineStyle aLineStyle)
{
	static int m_DrawMode;
	if  (!m_Pen && aLineStyle ==Solid )
	{m_Pen = new CPen(PS_SOLID, 1, RGB(0,0,0)); m_DrawMode = R2_MERGEPENNOT;}
	else if (!m_Pen && aLineStyle ==Dot )
	{m_Pen = new CPen(PS_DOT, 1, RGB(0,0,0));   m_DrawMode = R2_XORPEN;}
	else if (!m_Pen && aLineStyle == ShortDash)
	{m_Pen = new CPen(PS_DASH, 1, RGB(255,0,0));	m_DrawMode = R2_XORPEN;}
	else if (!m_Pen && aLineStyle == LongDash)
	{m_Pen = new CPen(PS_DASH, 1, RGB(0,0,0));	m_DrawMode = R2_NOTXORPEN;}
	else if (aLineStyle == Default) 
	{ m_Pen = NULL;	m_DrawMode = R2_MERGEPENNOT;}

	CPen* aOldPen = NULL;
	CClientDC clientDC(this);
	if (m_Pen) aOldPen = clientDC.SelectObject(m_Pen);
	clientDC.SetROP2(m_DrawMode);

	static		Standard_Integer StoredMinX, StoredMaxX, StoredMinY, StoredMaxY;
	static		Standard_Boolean m_IsVisible;

	if ( m_IsVisible && !Draw) // move or up  : erase at the old position 
	{
		clientDC.MoveTo(StoredMinX,StoredMinY); 
		clientDC.LineTo(StoredMinX,StoredMaxY); 
		clientDC.LineTo(StoredMaxX,StoredMaxY); 
		clientDC.LineTo(StoredMaxX,StoredMinY); 
		clientDC.LineTo(StoredMinX,StoredMinY);
		m_IsVisible = false;
	}

	StoredMinX = Min ( MinX, MaxX );
	StoredMinY = Min ( MinY, MaxY );
	StoredMaxX = Max ( MinX, MaxX );
	StoredMaxY = Max ( MinY, MaxY);

	if (Draw) // move : draw
	{
		clientDC.MoveTo(StoredMinX,StoredMinY); 
		clientDC.LineTo(StoredMinX,StoredMaxY); 
		clientDC.LineTo(StoredMaxX,StoredMaxY); 
		clientDC.LineTo(StoredMaxX,StoredMinY); 
		clientDC.LineTo(StoredMinX,StoredMinY);
		m_IsVisible = true;
	}

	if (m_Pen) 
		clientDC.SelectObject(aOldPen);
}
