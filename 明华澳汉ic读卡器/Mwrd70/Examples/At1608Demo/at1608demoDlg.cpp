// at1608demoDlg.cpp : implementation file
//

#include "stdafx.h"
#include "at1608demo.h"
#include "at1608demoDlg.h"
#include "port.h"
#include "baud.h"
#include "mwic_32.h"
#include "zone.h"
#include "mima.h"
#include "wrrd.h"
#include "rdzone.h"
#include "au.h"
#include "addr.h"
#include "config.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAt1608demoDlg dialog

CAt1608demoDlg::CAt1608demoDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CAt1608demoDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CAt1608demoDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CAt1608demoDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAt1608demoDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAt1608demoDlg, CDialog)
	//{{AFX_MSG_MAP(CAt1608demoDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_INIT, OnInit)
	ON_BN_CLICKED(IDC_RESET, OnReset)
	ON_WM_CLOSE()
	ON_BN_CLICKED(IDC_PASS, OnPass)
	ON_BN_CLICKED(IDC_RD, OnRd)
	ON_BN_CLICKED(IDC_WR, OnWr)
	ON_BN_CLICKED(IDC_AUTHORIZAT, OnAuthorizat)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAt1608demoDlg message handlers

BOOL CAt1608demoDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CAt1608demoDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CAt1608demoDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CAt1608demoDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CAt1608demoDlg::OnInit() 
{
	// TODO: Add your control notification handler code here
	Cport pt;
	CString m;
	CWnd *pw;
	if(pt.DoModal()!=IDOK)return;
	__int16 port=pt.m_Port;
	CBAUD bd;
	if(bd.DoModal()!=IDOK)return;
	int baud=bd.m_Baud;
	BeginWaitCursor();
	handle=ic_init(port,baud);
	EndWaitCursor();
	pw=GetDlgItem(IDC_STATIC1);
	if((long)handle<0)
	{
		m.Format("错误返回：%d",(long)handle);
		pw->SetWindowText(m);
		return;
	}
	pw=GetDlgItem(IDC_RESET);
	pw->EnableWindow(TRUE);
}

void CAt1608demoDlg::OnCancel() 
{
	// TODO: Add extra cleanup here
	ic_exit(handle);
	CDialog::OnCancel();
}

void CAt1608demoDlg::OnReset() 
{
  unsigned char data_buffer[4];
  CWnd *pw;
  CString m;
 __int16 st= reset_1608(handle,4, data_buffer);
 pw=GetDlgItem(IDC_STATIC1);
 if(st<0)
 {
	 m.Format("复位错误，%d",st);
     pw->SetWindowText(m);
	 return;
 }
  m.Format("复位返回：%02x,%02x,%02x,%02x",data_buffer[0],data_buffer[1],data_buffer[2],data_buffer[3]);
  pw->SetWindowText(m);
  pw=GetDlgItem(IDC_PASS);
  pw->EnableWindow(TRUE);
  pw=GetDlgItem(IDC_RD);
  pw->EnableWindow(TRUE);
  pw=GetDlgItem(IDC_WR);
  pw->EnableWindow(TRUE);
  pw=GetDlgItem(IDC_AUTHORIZAT);
  pw->EnableWindow(TRUE);
}

void CAt1608demoDlg::OnClose() 
{
	// TODO: Add your message handler code here and/or call default
	ic_exit(handle);
	CDialog::OnClose();
}

void CAt1608demoDlg::OnPass() 
{
	// TODO: Add your control notification handler code here
    unsigned char mima[3];
	char *p_Mi;
    CString m;
	CWnd *pw;
    CZone zone;
	if(zone.DoModal()!=IDOK)return;
	int m_ZZ=zone.m_Zone;
    int m_Wd;
	if(m_ZZ<8)
	{
	    CWrRd wd;
	    if(wd.DoModal()!=IDOK)return;
	     m_Wd=wd.m_Type;
	}
	Cmima ia;
	if(ia.DoModal()!=IDOK)return;
	p_Mi=ia.m_Mima.GetBuffer(6);
	pw=GetDlgItem(IDC_STATIC1);
	__int16 st=asc_hex((unsigned char *)p_Mi,mima,3);
	if(st<0)
	{
		m.Format("asc_hex wrong ,return : %d",st);
		pw->SetWindowText(m);
		return;
	}
	if(m_ZZ<8) st= csc_1608(handle, m_ZZ,3,m_Wd,mima);
	else st=csc_1608(handle,7,3,0,mima);
		if(st<0)
	{
		m.Format("csc_1608 wrong ,return :%d",st);
		pw->SetWindowText(m);
		return;
	}
		m.Format("csc_1608 ok!");
		pw->SetWindowText(m);
}

void CAt1608demoDlg::OnRd() 
{
	// TODO: Add your control notification handler code here
	unsigned char data[256];
	__int16 st,i,j;
	CDC *dc;
	CString m;
    int len;
	CWnd *pw;
	CRdzone zone;
	if(zone.DoModal()!=IDOK)return;
	int m_ZZ=zone.m_Zone;
	if(m_ZZ<8)
       st=srd_1608(handle,m_ZZ,0,256,data);
    else
	{
      CConfig fig;
	  if(fig.DoModal()!=IDOK)return;
	  len=fig.m_Len;      
	  int addr=fig.m_Addr;
	  st= srdconfig_1608(handle,addr,len,data);
	}
	pw=GetDlgItem(IDC_STATIC1);
	m.Format("read card return :%d",st);
	pw->SetWindowText(m);
	if(st<0)return;
    if(m_ZZ>8)
	{
//	      m.Format("data:%02x",data[0]);
//	      pw->SetWindowText(m);
    dc=GetDC();
	dc->SetTextColor(RGB(0,250,0)); 
	dc->SetBkColor(RGB(0,0,250));                  
	dc->SetBkMode(OPAQUE);
	for(i=0;i<200;i++)
		for(j=0;j<32;j++)
		{
			if(j+i*32>=300)break;
			dc->TextOut(j*20+50,i*20+150,"    ");
		}
	for(i=0;i<1000;i++)
		for(j=0;j<32;j++)
		{
            if(j+i*32>=len)break;
			m.Format("%02x",data[i*32+j]);
			dc->TextOut(50+j*20,i*20+150,m);
		}
		  return;
	}
    dc=GetDC();
	dc->SetTextColor(RGB(0,250,0)); 
	dc->SetBkColor(RGB(0,0,250));                  
	dc->SetBkMode(OPAQUE);
	for(i=0;i<200;i++)
		for(j=0;j<32;j++)
		{
			if(j+i*32>=300)break;
			dc->TextOut(j*20+50,i*20+150,"    ");
		}
	for(i=0;i<1000;i++)
		for(j=0;j<32;j++)
		{
            if(j+i*32>=256)break;
			m.Format("%02x",data[i*32+j]);
			dc->TextOut(50+j*20,i*20+150,m);
		}
	
}

void CAt1608demoDlg::OnWr() 
{
	// TODO: Add your control notification handler code here
	unsigned char data[256];
	int i;
	for(i=0;i<256;i++)
		data[i]=i;
	
	__int16 st;
	unsigned char *p;
	CString m;
	CWnd *pw;
	pw=GetDlgItem(IDC_STATIC1);
	CRdzone zone;
	if(zone.DoModal()!=IDOK)return;
	int m_ZZ=zone.m_Zone;
	if(m_ZZ<8)
       st=swr_1608(handle,m_ZZ,0,256,data);
    else
	{
      CConfig fig;
	  if(fig.DoModal()!=IDOK)return;
	  int len=fig.m_Len;
	  if(len>8)len=8;
      p=(unsigned char *)fig.m_Data.GetBuffer(len*2);
	  int addr=fig.m_Addr;
	  st=asc_hex(p,data,len);
	  if(st<0)
	  {
		m.Format("asc_hex wrong ,return : %d",st);
		pw->SetWindowText(m);
		return;
	  }
	  st=swrconfig_1608(handle,addr,len,data);
	}


	m.Format("write card return :%d",st);
	pw->SetWindowText(m);	
}

void CAt1608demoDlg::OnAuthorizat() 
{
	// TODO: Add your control notification handler code here
	unsigned char p0[8],ci[8],gc[8],p1[8],p2[8],pv[16];
    unsigned char mima[3];
    CString m;
	CWnd *pw;
	__int16 st;
///**************************************读出CI*************************************8***************************8
    st= srdconfig_1608(handle,0x28,8,ci);
	if(st<0)
	{
		m.Format("read ci wrong ,return : %d",st);
   	    pw=GetDlgItem(IDC_STATIC1);
		pw->SetWindowText(m);
		return;
	}
		m.Format("read ci,%02x,%02x,%02x,%02x,%02x,%02x,%02x,%02x",ci[0],ci[1],ci[2],ci[3],ci[4],ci[5],ci[6],ci[7]); 
   	    pw=GetDlgItem(IDC_STATIC2);
		pw->SetWindowText(m);
///**********************************************************************************************************************


///*****************************获得GC值，注意：当个人化后是无法从卡上读出的，要将其安全保留*****************************
	mima[0]=0x16;
	mima[1]=0x08;
	mima[2]=0xcd;
	 st= csc_1608(handle,7,3,0,mima);
	if(st<0)
	{
		m.Format("csc_1608 wrong ,return : %d",st);
    	pw=GetDlgItem(IDC_STATIC1);
		pw->SetWindowText(m);
		return;
	}
	
	st= srdconfig_1608(handle,0x30,8,gc);
	if(st<0)
	{
		m.Format("read gc wrong ,return : %d",st);
   	    pw=GetDlgItem(IDC_STATIC1);
		pw->SetWindowText(m);
		return;
	}
		m.Format("read gc ,%02x,%02x,%02x,%02x,%02x,%02x,%02x,%02x",gc[0],gc[1],gc[2],gc[3],gc[4],gc[5],gc[6],gc[7]);
   	    pw=GetDlgItem(IDC_STATIC3);
		pw->SetWindowText(m);
//********************************************************************************************************************
   	    pw=GetDlgItem(IDC_STATIC1);
//**************************产生P0值，实际使用中要求用随机数**********************************************************
   p0[0]=0x30;
   p0[1]=0x31;
   p0[2]=0x32;
   p0[3]=0x33;
   p0[4]=0x34;
   p0[5]=0x35;
   p0[6]=0x36;
   p0[7]=0x37;
//**********************************************************************************************************************
//*****************************由CI、GC、P0产生P1、P2*******************************************************************
   SetInit(ci,gc,p0);
    Authenticate(p1,p2);
//*************************************************************************************************************************
//**************************** init_auth_1608函数将P0和P1同时传给读写器作论证，P0在前、P1在后***************************
	memcpy(pv,p0,8);
	memcpy(&pv[8],p1,8);
    st= init_auth_1608( handle,16,pv);
	if(st<0)
	{
		m.Format("init_auth_1608 wrong ,return : %d",st);
		pw->SetWindowText(m);
		return;
	}
//************************************************************************************************************************
//*********************************查看计数器的值是否为255****************************************************************
	unsigned char h;
	st=srdconfig_1608(handle,0x20,1,&h);
	if(st<0)
	{
		m.Format("srdconfig(handle,0x20,1,&h) wrong ,return : %d",st);
		pw->SetWindowText(m);
		return;
	}
		m.Format(" counter: %02x",h);
		pw->SetWindowText(m);
//*************************************************************************************************************************
//***********************************查看CI新的值和P2是否一致**************************************************************
     st= srdconfig_1608(handle,0x28,8,ci);
	if(st<0)
	{
		m.Format("read  ci  again wrong ,return : %d",st);
   	    pw=GetDlgItem(IDC_STATIC1);
		pw->SetWindowText(m);
		return;
	}
		m.Format("read CI again ,%02x,%02x,%02x,%02x,%02x,%02x,%02x,%02x",ci[0],ci[1],ci[2],ci[3],ci[4],ci[5],ci[6],ci[7]); 
   	    pw=GetDlgItem(IDC_STATIC4);
		pw->SetWindowText(m);
		m.Format("p2,%02x,%02x,%02x,%02x,%02x,%02x,%02x,%02x",p2[0],p2[1],p2[2],p2[3],p2[4],p2[5],p2[6],p2[7]); 
   	    pw=GetDlgItem(IDC_STATIC5);
		pw->SetWindowText(m);
//*****************************************************************************************************************************

}
