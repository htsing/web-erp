// BAUD.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "BAUD.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CBAUD dialog


CBAUD::CBAUD(CWnd* pParent /*=NULL*/)
	: CDialog(CBAUD::IDD, pParent)
{
	//{{AFX_DATA_INIT(CBAUD)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_Baud=9600;
}


void CBAUD::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CBAUD)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CBAUD, CDialog)
	//{{AFX_MSG_MAP(CBAUD)
	ON_BN_CLICKED(IDC_115200, On115200)
	ON_BN_CLICKED(IDC_19200, On19200)
	ON_BN_CLICKED(IDC_38400, On38400)
	ON_BN_CLICKED(IDC_57600, On57600)
	ON_BN_CLICKED(IDC_9600, On9600)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CBAUD message handlers

void CBAUD::On115200() 
{
	// TODO: Add your control notification handler code here
		m_Baud=115200;
}

void CBAUD::On19200() 
{
	// TODO: Add your control notification handler code here
		m_Baud=19200;
}

void CBAUD::On38400() 
{
	// TODO: Add your control notification handler code here
		m_Baud=38400;
}

void CBAUD::On57600() 
{
	// TODO: Add your control notification handler code here
		m_Baud=57600;
}

void CBAUD::On9600() 
{
	// TODO: Add your control notification handler code here
		m_Baud=9600;
}
