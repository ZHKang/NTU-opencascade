
// NTU_OCC.h : NTU_OCC 應用程式的主標頭檔
//
#pragma once

#ifndef __AFXWIN_H__
	#error "對 PCH 包含此檔案前先包含 'stdafx.h'"
#endif

#include "resource.h"       // 主要符號


// CNTU_OCCApp:
// 請參閱實作此類別的 NTU_OCC.cpp
//

class CNTU_OCCApp : public CWinAppEx
{
public:
	CNTU_OCCApp();
	Handle(Graphic3d_GraphicDriver) m_GraphicDriver;
	 Handle(Graphic3d_GraphicDriver) GetGraphicDriver(){return m_GraphicDriver;} 
// 覆寫
public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();

// 程式碼實作
	UINT  m_nAppLook;
	BOOL  m_bHiColorIcons;

	virtual void PreLoadState();
	virtual void LoadCustomState();
	virtual void SaveCustomState();

	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
};

extern CNTU_OCCApp theApp;
