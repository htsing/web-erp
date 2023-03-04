// mima.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "mima.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// Cmima dialog


Cmima::Cmima(CWnd* pParent /*=NULL*/)
	: CDialog(Cmima::IDD, pParent)
{
	//{{AFX_DATA_INIT(Cmima)
	m_Mima = _T("");
	//}}AFX_DATA_INIT
}


void Cmima::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(Cmima)
	DDX_Text(pDX, IDC_EDIT1, m_Mima);
	DDV_MaxChars(pDX, m_Mima, 8);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(Cmima, CDialog)
	//{{AFX_MSG_MAP(Cmima)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// Cmima message handlers
