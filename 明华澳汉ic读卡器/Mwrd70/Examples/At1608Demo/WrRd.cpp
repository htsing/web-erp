// WrRd.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "WrRd.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWrRd dialog


CWrRd::CWrRd(CWnd* pParent /*=NULL*/)
	: CDialog(CWrRd::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWrRd)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_Type=1;
}


void CWrRd::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWrRd)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWrRd, CDialog)
	//{{AFX_MSG_MAP(CWrRd)
	ON_BN_CLICKED(IDC_RADIO1, OnRadio1)
	ON_BN_CLICKED(IDC_RADIO2, OnRadio2)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWrRd message handlers

void CWrRd::OnRadio1() 
{
	// TODO: Add your control notification handler code here
	m_Type=1;
}

void CWrRd::OnRadio2() 
{
	// TODO: Add your control notification handler code here
	m_Type=0;
}
