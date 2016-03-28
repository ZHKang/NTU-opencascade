
// NTU_OCC.cpp : 定義應用程式的類別行為。
//

#include "stdafx.h"
#include <iostream>
#include "afxwinappex.h"
#include "afxdialogex.h"
#include "NTU_OCC.h"
#include "MainFrm.h"

#include "NTU_OCCDoc.h"
#include "NTU_OCCView.h"
/////// OCC HEADER  ///////////////
#include <Standard_Macro.hxx>
#include <Graphic3d_GraphicDriver.hxx>

#ifdef _DEBUG
//#define new DEBUG_NEW
#endif

using namespace std;

// CNTU_OCCApp

BEGIN_MESSAGE_MAP(CNTU_OCCApp, CWinAppEx)
	ON_COMMAND(ID_APP_ABOUT, &CNTU_OCCApp::OnAppAbout)
	// 依據文件命令的標準檔案
	ON_COMMAND(ID_FILE_NEW, &CWinAppEx::OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, &CWinAppEx::OnFileOpen)
	// 標準列印設定命令
	ON_COMMAND(ID_FILE_PRINT_SETUP, &CWinAppEx::OnFilePrintSetup)
END_MESSAGE_MAP()


// CNTU_OCCApp 建構

CNTU_OCCApp::CNTU_OCCApp()
{
	m_bHiColorIcons = TRUE;

	try
	{
		Handle(Aspect_DisplayConnection) aDisplayConnection;
		m_GraphicDriver=new OpenGl_GraphicDriver(aDisplayConnection);  
	}
	catch(Standard_Failure)
	{  
		//AfxMessageBox("_T(Error Ocured in Initializing the Opencascade graphic variable.)");     
	}  

	// 支援重新啟動管理員
	m_dwRestartManagerSupportFlags = AFX_RESTART_MANAGER_SUPPORT_ALL_ASPECTS;
#ifdef _MANAGED
	// 如果應用程式是使用 Common Language Runtime 支援 (/clr) 建置的:
	//     1) 要使重新啟動管理員支援正常運作需要這個額外設定。
	//     2) 在專案中必須將參考加入至 System.Windows.Forms 才能進行建置。
	System::Windows::Forms::Application::SetUnhandledExceptionMode(System::Windows::Forms::UnhandledExceptionMode::ThrowException);
#endif

	// TODO: 以唯一的 ID 字串取代下面的應用程式 ID 字串; 建議的
	// 字串格式為 CompanyName.ProductName.SubProduct.VersionInformation
	SetAppID(_T("NTU_OCC.AppID.NoVersion"));

	// TODO: 在此加入建構程式碼，
	// 將所有重要的初始設定加入 InitInstance 中
}

// 僅有的一個 CNTU_OCCApp 物件

CNTU_OCCApp theApp;


// CNTU_OCCApp 初始設定

BOOL CNTU_OCCApp::InitInstance()
{
	// The important lines:
	AllocConsole() ;
	AttachConsole( GetCurrentProcessId() ) ;
	freopen( "CON", "w", stdout );

	// create a new console to the process   
	freopen( "CONOUT$", "w+t", stdout );// 申请写
	//freopen( "CONIN$", "r+t", stdin );  // 申请读
	// 假如應用程式資訊清單指定使用 ComCtl32.dll 6 (含) 以後版本，
	// 來啟動視覺化樣式，在 Windows XP 上，則需要 InitCommonControls()。
	// 否則任何視窗的建立都將失敗。
	INITCOMMONCONTROLSEX InitCtrls;
	InitCtrls.dwSize = sizeof(InitCtrls);
	// 設定要包含所有您想要用於應用程式中的
	// 通用控制項類別。
	InitCtrls.dwICC = ICC_WIN95_CLASSES;
	InitCommonControlsEx(&InitCtrls);

	CWinAppEx::InitInstance();


	// 初始化 OLE 程式庫
	if (!AfxOleInit())
	{
		AfxMessageBox(IDP_OLE_INIT_FAILED);
		return FALSE;
	}

	AfxEnableControlContainer();

	EnableTaskbarInteraction(FALSE);

	// 需要有 AfxInitRichEdit2() 才能使用 RichEdit 控制項	
	// AfxInitRichEdit2();

	// 標準初始設定
	// 如果您不使用這些功能並且想減少
	// 最後完成的可執行檔大小，您可以
	// 從下列程式碼移除不需要的初始化常式，
	// 變更儲存設定值的登錄機碼
	// TODO: 您應該適度修改此字串
	// (例如，公司名稱或組織名稱)
	SetRegistryKey(_T("本機 AppWizard 所產生的應用程式"));
	LoadStdProfileSettings(4);  // 載入標準 INI 檔選項 (包含 MRU)


	InitContextMenuManager();

	InitKeyboardManager();

	InitTooltipManager();
	CMFCToolTipInfo ttParams;
	ttParams.m_bVislManagerTheme = TRUE;
	theApp.GetTooltipManager()->SetTooltipParams(AFX_TOOLTIP_TYPE_ALL,
		RUNTIME_CLASS(CMFCToolTipCtrl), &ttParams);

	// 登錄應用程式的文件範本。文件範本負責在文件、
	// 框架視窗與檢視間進行連接
	CSingleDocTemplate* pDocTemplate;
	pDocTemplate = new CSingleDocTemplate(
		IDR_MAINFRAME,
		RUNTIME_CLASS(CNTU_OCCDoc),
		RUNTIME_CLASS(CMainFrame),       // 主 SDI 框架視窗
		RUNTIME_CLASS(CNTU_OCCView));
	if (!pDocTemplate)
		return FALSE;
	AddDocTemplate(pDocTemplate);


	// 剖析標準 Shell 命令、DDE、檔案開啟舊檔的命令列
	CCommandLineInfo cmdInfo;
	ParseCommandLine(cmdInfo);



	// 在命令列中指定的分派命令。如果已使用 
	// /RegServer、/Register、/Unregserver 或 /Unregister 啟動應用程式，將傳回 FALSE。
	if (!ProcessShellCommand(cmdInfo))
		return FALSE;

	// 僅初始化一個視窗，所以顯示並更新該視窗
	m_pMainWnd->ShowWindow(SW_SHOW);
	m_pMainWnd->UpdateWindow();
	// 只有在 SDI 應用程式中有後置字元時，才呼叫 DragAcceptFiles
	// 這會發生於 ProcessShellCommand 之後
	return TRUE;
}

int CNTU_OCCApp::ExitInstance()
{
	// TODO: 處理其他您已經加入的資源
	AfxOleTerm(FALSE);

	return CWinAppEx::ExitInstance();
}

// CNTU_OCCApp 訊息處理常式


// 對 App About 使用 CAboutDlg 對話方塊

class CAboutDlg : public CDialogEx
{
public:
	CAboutDlg();

// 對話方塊資料
	enum { IDD = IDD_ABOUTBOX };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支援

// 程式碼實作
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialogEx(CAboutDlg::IDD)
{
	//cout<<"hello world"<<endl;
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialogEx)
END_MESSAGE_MAP()

// 執行對話方塊的應用程式命令
void CNTU_OCCApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}

// CNTU_OCCApp 自訂載入/儲存方法

void CNTU_OCCApp::PreLoadState()
{
	BOOL bNameValid;
	CString strName;
	bNameValid = strName.LoadString(IDS_EDIT_MENU);
	ASSERT(bNameValid);
	GetContextMenuManager()->AddMenu(strName, IDR_POPUP_EDIT);
}

void CNTU_OCCApp::LoadCustomState()
{
}

void CNTU_OCCApp::SaveCustomState()
{
}

// CNTU_OCCApp 訊息處理常式



