
// NTU_OCCView.cpp : CNTU_OCCView ���O����@
//

#include "stdafx.h"
// SHARED_HANDLERS �i�H�w�q�b��@�w���B�Y�ϩM�j�M�z�����B�z�`����
// ATL �M�פ��A�ä��\�P�ӱM�צ@�Τ��{���X�C
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
	// �зǦC�L�R�O
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CNTU_OCCView::OnFilePrintPreview)
	ON_WM_CONTEXTMENU()
	ON_WM_RBUTTONUP()
	ON_WM_MOUSEMOVE()
END_MESSAGE_MAP()

// CNTU_OCCView �غc/�Ѻc

CNTU_OCCView::CNTU_OCCView()
{
	// TODO: �b���[�J�غc�{���X

}

CNTU_OCCView::~CNTU_OCCView()
{
}

BOOL CNTU_OCCView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: �b���g�ѭק� CREATESTRUCT cs 
	// �F��ק�������O�μ˦����ت�

	return CView::PreCreateWindow(cs);
}

// CNTU_OCCView �yø

void CNTU_OCCView::OnDraw(CDC* /*pDC*/)
{
	CNTU_OCCDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	if (!pDoc)
		return;
	myView->MustBeResized();  
	myView->Update();  
	// TODO: �b���[�J��͸�ƪ��yø�{���X
}


// CNTU_OCCView �C�L


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
	// �w�]���ǳƦC�L�{���X
	return DoPreparePrinting(pInfo);
}

void CNTU_OCCView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: �[�J�C�L�e�B�~����l�]�w
}

void CNTU_OCCView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: �[�J�C�L�᪺�M���{���X
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

// CNTU_OCCView �E�_

#ifdef _DEBUG
void CNTU_OCCView::AssertValid() const
{
	CView::AssertValid();
}

void CNTU_OCCView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CNTU_OCCDoc* CNTU_OCCView::GetDocument() const // ���O�D��������
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CNTU_OCCDoc)));
	return (CNTU_OCCDoc*)m_pDocument;
}
#endif //_DEBUG


// CNTU_OCCView �T���B�z�`��
