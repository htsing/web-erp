// Zone.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "Zone.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CZone dialog


CZone::CZone(CWnd* pParent /*=NULL*/)
	: CDialog(CZone::IDD, pParent)
{
	//{{AFX_DATA_INIT(CZone)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_Zone=0;
}


void CZone::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CZone)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CZone, CDialog)
	//{{AFX_MSG_MAP(CZone)
	ON_BN_CLICKED(IDC_0, On0)
	ON_BN_CLICKED(IDC_1, On1)
	ON_BN_CLICKED(IDC_2, On2)
	ON_BN_CLICKED(IDC_3, On3)
	ON_BN_CLICKED(IDC_4, On4)
	ON_BN_CLICKED(IDC_5, On5)
	ON_BN_CLICKED(IDC_6, On6)
	ON_BN_CLICKED(IDC_7, On7)
	ON_BN_CLICKED(IDC_100, On100)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CZone message handlers

void CZone::On0() 
{
	// TODO: Add your control notification handler code here
		m_Zone=0;
}

void CZone::On1() 
{
	// TODO: Add your control notification handler code here
		m_Zone=1;
}

void CZone::On2() 
{
	// TODO: Add your control notification handler code here
		m_Zone=2;
}

void CZone::On3() 
{
	// TODO: Add your control notification handler code here
		m_Zone=3;
}

void CZone::On4() 
{
	// TODO: Add your control notification handler code here
		m_Zone=4;
}

void CZone::On5() 
{
	// TODO: Add your control notification handler code here
		m_Zone=5;
}

void CZone::On6() 
{
	// TODO: Add your control notification handler code here
		m_Zone=6;
}

void CZone::On7() 
{
	// TODO: Add your control notification handler code here
		m_Zone=7;
}

void CZone::On100() 
{
	// TODO: Add your control notification handler code here
	m_Zone=100;
}
