// Addr.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "Addr.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAddr dialog


CAddr::CAddr(CWnd* pParent /*=NULL*/)
	: CDialog(CAddr::IDD, pParent)
{
	//{{AFX_DATA_INIT(CAddr)
	m_Number = 0;
	//}}AFX_DATA_INIT
}


void CAddr::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAddr)
	DDX_Text(pDX, IDC_EDIT1, m_Number);
	DDV_MinMaxInt(pDX, m_Number, 0, 256);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CAddr, CDialog)
	//{{AFX_MSG_MAP(CAddr)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAddr message handlers
