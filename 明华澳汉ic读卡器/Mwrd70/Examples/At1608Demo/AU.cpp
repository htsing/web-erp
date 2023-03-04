// AU.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "AU.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAU dialog


CAU::CAU(CWnd* pParent /*=NULL*/)
	: CDialog(CAU::IDD, pParent)
{
	//{{AFX_DATA_INIT(CAU)
	m_Au = _T("");
	//}}AFX_DATA_INIT
}


void CAU::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAU)
	DDX_Text(pDX, IDC_EDIT1, m_Au);
	DDV_MaxChars(pDX, m_Au, 20);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CAU, CDialog)
	//{{AFX_MSG_MAP(CAU)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAU message handlers
