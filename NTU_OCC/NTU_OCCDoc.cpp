﻿
// NTU_OCCDoc.cpp : CNTU_OCCDoc 類別的實作
//

#include "stdafx.h"
// SHARED_HANDLERS 可以定義在實作預覽、縮圖和搜尋篩選條件處理常式的
// ATL 專案中，並允許與該專案共用文件程式碼。
#ifndef SHARED_HANDLERS
#include "NTU_OCC.h"
#endif

#include "NTU_OCCDoc.h"
#include "NTU_OCCView.h"
#include "MainFrm.h"
#include <propkey.h>
#include "NTUproject.h"

#ifdef _DEBUG
//#define new DEBUG_NEW
#endif

// CNTU_OCCDoc

IMPLEMENT_DYNCREATE(CNTU_OCCDoc, CDocument)

BEGIN_MESSAGE_MAP(CNTU_OCCDoc, CDocument)
	ON_COMMAND(ID_IMPORT_IGES, &CNTU_OCCDoc::OnImportIges)
	ON_COMMAND(ID_IMPORT_STL, &CNTU_OCCDoc::OnFileImportStep)
	ON_COMMAND(ID_IMPORT_CSFDB, &CNTU_OCCDoc::OnFileImportCSFDB)
	ON_COMMAND(ID_FCN_LOADATOM, &CNTU_OCCDoc::OnFcnLoadatom)
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

	myAISContext =new AIS_InteractiveContext(myViewer);  //创建一个交互文档
	myAISContext->DefaultDrawer()->UIsoAspect()->SetNumber(11);
	myAISContext->DefaultDrawer()->VIsoAspect()->SetNumber(11);

	myAISContext->SetDisplayMode(AIS_Shaded,Standard_False);

	m_pcoloredshapeList = new CColoredShapes();
}

CNTU_OCCDoc::~CNTU_OCCDoc()
{ 
	if( m_pcoloredshapeList ) delete m_pcoloredshapeList;
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
		// TODO: add storing code here
		ar << m_pcoloredshapeList;
	}
	else
	{
		// Read from the archive the current CColoredShape
		ar >> m_pcoloredshapeList;

		// Display the new object
		m_pcoloredshapeList->Display(myAISContext);
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
//======================================================================

//======================================================================
//=                                                                    =
//=                      IGES                                          =
//=                                                                    =
//======================================================================

void CNTU_OCCDoc::OnImportIges()
{
	Handle(TopTools_HSequenceOfShape) aSeqOfShape = CNTU_OCCDoc::ReadIGES();
	for(int i=1;i<= aSeqOfShape->Length();i++)
	{
		m_pcoloredshapeList->Add(Quantity_NOC_VIOLET, aSeqOfShape->Value(i));
		m_pcoloredshapeList->Display(myAISContext);
	}
	Fit();
}

void CNTU_OCCDoc::ReadIGES(const Handle(AIS_InteractiveContext)& anInteractiveContext)
{
	Handle(TopTools_HSequenceOfShape) aSequence = CNTU_OCCDoc::ReadIGES();
	for(int i=1;i<= aSequence->Length();i++)
		anInteractiveContext->Display(new AIS_Shape(aSequence->Value(i)));

}

Handle(TopTools_HSequenceOfShape) CNTU_OCCDoc::ReadIGES()// not by reference --> the sequence is created here !!
{
	CFileDialog dlg(TRUE,
		NULL,
		NULL,
		OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT,
		L"IGES Files (*.iges , *.igs)|*.iges; *.igs|All Files (*.*)|*.*||",
		NULL );

	CString CASROOTValue;
	CASROOTValue.GetEnvironmentVariable (L"CASROOT");
	CString initdir = (CASROOTValue + "\\..\\data\\iges");

	dlg.m_ofn.lpstrInitialDir = initdir;

	Handle(TopTools_HSequenceOfShape) aSequence = new TopTools_HSequenceOfShape();
	if (dlg.DoModal() == IDOK) 
	{
		SetCursor(AfxGetApp()->LoadStandardCursor(IDC_WAIT));
		TCollection_ExtendedString aFileNameW ((Standard_ExtString )(const wchar_t* )dlg.GetPathName());
		TCollection_AsciiString    aFileName  (aFileNameW, '?');
		Standard_Integer status = ReadIGES (aFileName.ToCString(), aSequence);
		if (status != IFSelect_RetDone)
		{
			MessageBoxW (AfxGetApp()->m_pMainWnd->m_hWnd, L"Error : The file is not read", L"CasCade Error", MB_ICONERROR);
		}

		SetCursor(AfxGetApp()->LoadStandardCursor(IDC_ARROW));
	}
	return aSequence;
}

Standard_Integer CNTU_OCCDoc::ReadIGES(const Standard_CString& aFileName,
	Handle(TopTools_HSequenceOfShape)& aHSequenceOfShape)
{

	IGESControl_Reader Reader;

	Standard_Integer status = Reader.ReadFile(aFileName);

	if (status != IFSelect_RetDone) return status;
	Reader.TransferRoots();
	TopoDS_Shape aShape = Reader.OneShape();
	aHSequenceOfShape->Append(aShape);


	return status;
}


//======================================================================

//======================================================================
//=                                                                    =
//=                      STEP                                          =
//=                                                                    =
//======================================================================

void CNTU_OCCDoc::ReadSTEP(const Handle(AIS_InteractiveContext)& anInteractiveContext)
{
	Handle(TopTools_HSequenceOfShape) aSequence = CNTU_OCCDoc::ReadSTEP();
	if (!aSequence.IsNull()) {	
		for(int i=1;i<= aSequence->Length();i++)
			anInteractiveContext->Display(new AIS_Shape(aSequence->Value(i)), Standard_False);
	}
}

Handle(TopTools_HSequenceOfShape) CNTU_OCCDoc::ReadSTEP()// not by reference --> the sequence is created here !!
{
	CFileDialog dlg(TRUE,
		NULL,
		NULL,
		OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT,
		L"STEP Files (*.stp;*.step)|*.stp; *.step|All Files (*.*)|*.*||",
		NULL );

	CString CASROOTValue;
	CASROOTValue.GetEnvironmentVariable(L"CASROOT");
	CString initdir = (CASROOTValue + "\\..\\data\\step");

	dlg.m_ofn.lpstrInitialDir = initdir;

	Handle(TopTools_HSequenceOfShape) aSequence= new TopTools_HSequenceOfShape();
	if (dlg.DoModal() == IDOK) 
	{
		SetCursor(AfxGetApp()->LoadStandardCursor(IDC_WAIT));
		TCollection_ExtendedString aFileNameW ((Standard_ExtString )(const wchar_t* )dlg.GetPathName());
		TCollection_AsciiString    aFileName  (aFileNameW, '?');
		IFSelect_ReturnStatus ReturnStatus = ReadSTEP (aFileName.ToCString(), aSequence);
		switch (ReturnStatus) 
		{
		case IFSelect_RetError :
			MessageBoxW (AfxGetApp()->m_pMainWnd->m_hWnd, L"Not a valid Step file", L"ERROR", MB_ICONWARNING);
			break;
		case IFSelect_RetFail :
			MessageBoxW (AfxGetApp()->m_pMainWnd->m_hWnd, L"Reading has failed", L"ERROR", MB_ICONWARNING);
			break;
		case IFSelect_RetVoid :
			MessageBoxW (AfxGetApp()->m_pMainWnd->m_hWnd, L"Nothing to transfer", L"ERROR", MB_ICONWARNING);
			break;
		}
		SetCursor(AfxGetApp()->LoadStandardCursor(IDC_ARROW));       
	}
	return aSequence;
}

IFSelect_ReturnStatus CNTU_OCCDoc::ReadSTEP(const Standard_CString& aFileName,
	Handle(TopTools_HSequenceOfShape)& aHSequenceOfShape)
{
	aHSequenceOfShape->Clear();

	// create additional log file
	STEPControl_Reader aReader;
	IFSelect_ReturnStatus status = aReader.ReadFile(aFileName);
	if (status != IFSelect_RetDone)
		return status;

	aReader.WS()->MapReader()->SetTraceLevel(2); // increase default trace level

	Standard_Boolean failsonly = Standard_False;
	aReader.PrintCheckLoad(failsonly, IFSelect_ItemsByEntity);

	// Root transfers
	Standard_Integer nbr = aReader.NbRootsForTransfer();
	aReader.PrintCheckTransfer (failsonly, IFSelect_ItemsByEntity);
	for ( Standard_Integer n = 1; n<=nbr; n++) {
		/*Standard_Boolean ok =*/ aReader.TransferRoot(n);
	}

	// Collecting resulting entities
	Standard_Integer nbs = aReader.NbShapes();
	if (nbs == 0) {
		return IFSelect_RetVoid;
	}
	for (Standard_Integer i=1; i<=nbs; i++) {
		aHSequenceOfShape->Append(aReader.Shape(i));
	}

	return status;
}
void CNTU_OCCDoc::Fit()
{
	CMainFrame *pFrame =  (CMainFrame*)AfxGetApp()->m_pMainWnd;
	CNTU_OCCView *pView = (CNTU_OCCView *) pFrame->GetActiveView();
	pView->CNTU_OCCView::FitAll();
}
void CNTU_OCCDoc::OnFileImportStep()
{
	Handle(TopTools_HSequenceOfShape) aSeqOfShape = CNTU_OCCDoc::ReadSTEP();
	for(int i=1;i<= aSeqOfShape->Length();i++)
	{
		m_pcoloredshapeList->Add(Quantity_NOC_YELLOW, aSeqOfShape->Value(i));
		m_pcoloredshapeList->Display(myAISContext);
	}
	Fit();
}
void CNTU_OCCDoc::OnFileImportCSFDB()
{
	// TODO: 在此加入您的命令處理常式程式碼
}


void CNTU_OCCDoc::OnFcnLoadatom()
{
	// TODO: 在此加入您的命令處理常式程式碼
}
