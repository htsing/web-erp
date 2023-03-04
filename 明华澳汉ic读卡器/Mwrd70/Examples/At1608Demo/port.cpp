// port.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "port.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// Cport dialog


Cport::Cport(CWnd* pParent /*=NULL*/)
	: CDialog(Cport::IDD, pParent)
{
	//{{AFX_DATA_INIT(Cport)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_Port=0;
}


void Cport::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(Cport)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(Cport, CDialog)
	//{{AFX_MSG_MAP(Cport)
	ON_BN_CLICKED(IDC_port1, Onport1)
	ON_BN_CLICKED(IDC_port2, Onport2)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// Cport message handlers

void Cport::Onport1() 
{
	// TODO: Add your control notification handler code here
		m_Port=0;
}

void Cport::Onport2() 
{
	// TODO: Add your control notification handler code here
		m_Port=1;
}
