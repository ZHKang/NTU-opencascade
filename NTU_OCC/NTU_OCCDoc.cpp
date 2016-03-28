
// NTU_OCCDoc.cpp : CNTU_OCCDoc 類別的實作
//

#include "stdafx.h"
// SHARED_HANDLERS 可以定義在實作預覽、縮圖和搜尋篩選條件處理常式的
// ATL 專案中，並允許與該專案共用文件程式碼。
#ifndef SHARED_HANDLERS
#include "NTU_OCC.h"
#endif

#include "NTU_OCCDoc.h"

#include <propkey.h>

#ifdef _DEBUG
//#define new DEBUG_NEW
#endif

// CNTU_OCCDoc

IMPLEMENT_DYNCREATE(CNTU_OCCDoc, CDocument)

BEGIN_MESSAGE_MAP(CNTU_OCCDoc, CDocument)
	ON_COMMAND(ID_IMPORT_IGES, &CNTU_OCCDoc::OnImportIges)
END_MESSAGE_MAP()


// CNTU_OCCDoc 建構/解構

CNTU_OCCDoc::CNTU_OCCDoc()
{
	// TODO: 在此加入一次建構程式碼
	Handle(Graphic3d_GraphicDriver) theGraphicDriver=((CNTU_OCCApp*)AfxGetApp())->GetGraphicDriver();  
	
	TCollection_ExtendedString a3DName("Visu3D");
	myViewer = new V3d_Viewer(theGraphicDriver,a3DName.ToExtString()); 
	myViewer->SetDefaultLights();
	myViewer->SetLightOn();
	myViewer->SetDefaultBackgroundColor(Quantity_NOC_BLACK);  // 設定初始背景顏色

	myAISContext =new AIS_InteractiveContext(myViewer);  //创建一个交互文档
	myAISContext->DefaultDrawer()->UIsoAspect()->SetNumber(11);
	myAISContext->DefaultDrawer()->VIsoAspect()->SetNumber(11);

	myAISContext->SetDisplayMode(AIS_Shaded,Standard_False);
}

CNTU_OCCDoc::~CNTU_OCCDoc()
{
}

BOOL CNTU_OCCDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: 在此加入重新初始化程式碼
	// (SDI 文件會重用此文件)

	return TRUE;
}




// CNTU_OCCDoc 序列化

void CNTU_OCCDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: 在此加入儲存程式碼
	}
	else
	{
		// TODO: 在此加入載入程式碼
	}
}

#ifdef SHARED_HANDLERS

// 縮圖的支援
void CNTU_OCCDoc::OnDrawThumbnail(CDC& dc, LPRECT lprcBounds)
{
	// 修改這段程式碼以繪製文件的資料
	dc.FillSolidRect(lprcBounds, RGB(255, 255, 255));

	CString strText = _T("TODO: implement thumbnail drawing here");
	LOGFONT lf;

	CFont* pDefaultGUIFont = CFont::FromHandle((HFONT) GetStockObject(DEFAULT_GUI_FONT));
	pDefaultGUIFont->GetLogFont(&lf);
	lf.lfHeight = 36;

	CFont fontDraw;
	fontDraw.CreateFontIndirect(&lf);

	CFont* pOldFont = dc.SelectObject(&fontDraw);
	dc.DrawText(strText, lprcBounds, DT_CENTER | DT_WORDBREAK);
	dc.SelectObject(pOldFont);
}

// 搜尋處理常式的支援
void CNTU_OCCDoc::InitializeSearchContent()
{
	CString strSearchContent;
	// 設定來自文件資料的搜尋內容。
	// 內容部分應該以 ";" 隔開

	// 範例:  strSearchContent = _T("point;rectangle;circle;ole object;");
	SetSearchContent(strSearchContent);
}

void CNTU_OCCDoc::SetSearchContent(const CString& value)
{
	if (value.IsEmpty())
	{
		RemoveChunk(PKEY_Search_Contents.fmtid, PKEY_Search_Contents.pid);
	}
	else
	{
		CMFCFilterChunkValueImpl *pChunk = NULL;
		ATLTRY(pChunk = new CMFCFilterChunkValueImpl);
		if (pChunk != NULL)
		{
			pChunk->SetTextValue(PKEY_Search_Contents, value, CHUNK_TEXT);
			SetChunkValue(pChunk);
		}
	}
}

#endif // SHARED_HANDLERS

// CNTU_OCCDoc 診斷

#ifdef _DEBUG
void CNTU_OCCDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CNTU_OCCDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG


// CNTU_OCCDoc 命令


void CNTU_OCCDoc::OnImportIges()
{
	// TODO: 在此加入您的命令處理常式程式碼
}
