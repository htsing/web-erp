// Config.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "Config.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CConfig dialog


CConfig::CConfig(CWnd* pParent /*=NULL*/)
	: CDialog(CConfig::IDD, pParent)
{
	//{{AFX_DATA_INIT(CConfig)
	m_Addr = 0;
	m_Len = 0;
	m_Data = _T("");
	//}}AFX_DATA_INIT
}


void CConfig::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CConfig)
	DDX_Text(pDX, IDC_ADDR, m_Addr);
	DDV_MinMaxInt(pDX, m_Addr, 0, 255);
	DDX_Text(pDX, IDC_LEN, m_Len);
	DDV_MinMaxInt(pDX, m_Len, 1, 128);
	DDX_Text(pDX, IDC_DATA, m_Data);
	DDV_MaxChars(pDX, m_Data, 20);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CConfig, CDialog)
	//{{AFX_MSG_MAP(CConfig)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CConfig message handlers
