#include "StdAfx.h"
#include "NTUproject.h"
#include <direct.h>


NTUproject::NTUproject(void)
{
}


NTUproject::~NTUproject(void)
{
}

void NTUproject::loadAtom()
{
	char org_dir[200];
	getcwd(org_dir,200);
	Standard_CString file = "\OCC3rdParty\AtomCAD\base.STEP";
	STEPControl_Reader* reader = new STEPControl_Reader();
	reader->ReadFile(file);
	reader->TransferRoot();
	TopoDS_Shape shape = reader->OneShape();


}
