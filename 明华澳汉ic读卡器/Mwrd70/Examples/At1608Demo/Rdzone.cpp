// Rdzone.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "Rdzone.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRdzone dialog


CRdzone::CRdzone(CWnd* pParent /*=NULL*/)
	: CDialog(CRdzone::IDD, pParent)
{
	//{{AFX_DATA_INIT(CRdzone)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_Zone=7;
}


void CRdzone::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CRdzone)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CRdzone, CDialog)
	//{{AFX_MSG_MAP(CRdzone)
	ON_BN_CLICKED(IDC_1, On1)
	ON_BN_CLICKED(IDC_100, On100)
	ON_BN_CLICKED(IDC_2, On2)
	ON_BN_CLICKED(IDC_3, On3)
	ON_BN_CLICKED(IDC_4, On4)
	ON_BN_CLICKED(IDC_5, On5)
	ON_BN_CLICKED(IDC_6, On6)
	ON_BN_CLICKED(IDC_7, On7)
	ON_BN_CLICKED(IDC_0, On0)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRdzone message handlers

void CRdzone::On1() 
{
	// TODO: Add your control notification handler code here
		m_Zone=1;
}

void CRdzone::On100() 
{
	// TODO: Add your control notification handler code here
		m_Zone=100;
}

void CRdzone::On2() 
{
	// TODO: Add your control notification handler code here
		m_Zone=2;
}

void CRdzone::On3() 
{
	// TODO: Add your control notification handler code here
		m_Zone=3;
}

void CRdzone::On4() 
{
	// TODO: Add your control notification handler code here
		m_Zone=4;
}

void CRdzone::On5() 
{
	// TODO: Add your control notification handler code here
		m_Zone=5;
}

void CRdzone::On6() 
{
	// TODO: Add your control notification handler code here
		m_Zone=6;
}

void CRdzone::On7() 
{
	// TODO: Add your control notification handler code here
		m_Zone=7;
}

void CRdzone::On0() 
{
	// TODO: Add your control notification handler code here
	m_Zone=0;
	
}
