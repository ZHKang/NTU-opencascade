
// NTU_OCC.h : NTU_OCC ���ε{�����D���Y��
//
#pragma once

#ifndef __AFXWIN_H__
	#error "�� PCH �]�t���ɮ׫e���]�t 'stdafx.h'"
#endif

#include "resource.h"       // �D�n�Ÿ�


// CNTU_OCCApp:
// �аѾ\��@�����O�� NTU_OCC.cpp
//

class CNTU_OCCApp : public CWinAppEx
{
public:
	CNTU_OCCApp();
	Handle(Graphic3d_GraphicDriver) m_GraphicDriver;
	 Handle(Graphic3d_GraphicDriver) GetGraphicDriver(){return m_GraphicDriver;} 
// �мg
public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();

// �{���X��@
	UINT  m_nAppLook;
	BOOL  m_bHiColorIcons;

	virtual void PreLoadState();
	virtual void LoadCustomState();
	virtual void SaveCustomState();

	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
};

extern CNTU_OCCApp theApp;
