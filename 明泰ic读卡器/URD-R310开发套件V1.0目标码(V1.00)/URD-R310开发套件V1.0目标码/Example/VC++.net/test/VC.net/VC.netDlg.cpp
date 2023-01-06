// VC.netDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "VC.net.h"
#include "VC.netDlg.h"
#include "Mwic_32.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// 用于应用程序“关于”菜单项的 CAboutDlg 对话框

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// 对话框数据
	enum { IDD = IDD_ABOUTBOX };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

// 实现
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
END_MESSAGE_MAP()


// CVCnetDlg 对话框




CVCnetDlg::CVCnetDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CVCnetDlg::IDD, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CVCnetDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_LIST2, m_list);
}

BEGIN_MESSAGE_MAP(CVCnetDlg, CDialog)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDC_BUTTON1, &CVCnetDlg::OnBnClickedButton1)
	ON_BN_CLICKED(IDC_BUTTON2, &CVCnetDlg::OnBnClickedButton2)
	ON_BN_CLICKED(IDC_BUTTON3, &CVCnetDlg::OnBnClickedButton3)
	ON_BN_CLICKED(IDC_BUTTON5, &CVCnetDlg::OnBnClickedButton5)
	ON_BN_CLICKED(IDC_BUTTON4, &CVCnetDlg::OnBnClickedButton4)
END_MESSAGE_MAP()


// CVCnetDlg 消息处理程序

BOOL CVCnetDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// 将“关于...”菜单项添加到系统菜单中。

	// IDM_ABOUTBOX 必须在系统命令范围内。
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

	// 设置此对话框的图标。当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码
	int n=0;
	int st;
	__int16 state;
	icdev = ic_init(0,9600);
	if (icdev != NULL) 
    { 
		m_list.InsertString(n,_T("ic_init()  Ok!"));
	}
    else
    {
		m_list.InsertString (n,_T("ic_init()  error!"));
		
	}
	n++;
	st = dv_beep(icdev,20);
	if (st == 0) 
    { 
		m_list.InsertString(n,_T("dv_beep()  Ok!"));
	}
    else
    {
		m_list.InsertString (n,_T("dv_beep()  error!"));
		
	}
	n++;
	st = get_status(icdev,&state);
	if (st == 0) 
    { 
		m_list.InsertString(n,_T("get_status()  Ok!"));
	}
    else
    {
		m_list.InsertString (n,_T("get_status()  error!"));
		
	}

	return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}

void CVCnetDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CVCnetDlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 用于绘制的设备上下文

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 使图标在工作矩形中居中
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 绘制图标
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

//当用户拖动最小化窗口时系统调用此函数取得光标显示。
//
HCURSOR CVCnetDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


void CVCnetDlg::OnBnClickedButton1()
{
	// TODO: 在此添加控件通知处理程序代码
	int n=0;
	int st;
	unsigned char data_buffer[16];
	m_list.ResetContent();
	st = chk_4442(icdev);
	if(st == 0)
	{
		m_list.InsertString(n,_T("chk_card()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("chk_card()  error!"));
	}
	n++;
	st = srd_4442(icdev,35,15,data_buffer);
	if(st == 0)
	{
		m_list.InsertString(n,_T("srd_4442()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("srd_4442()  error!"));
	}
}

void CVCnetDlg::OnBnClickedButton2()
{
	// TODO: 在此添加控件通知处理程序代码
	int n=0;
	int st;
	unsigned char data_buffer[16];
	m_list.ResetContent();
	st = chk_4428(icdev);
	if(st == 0)
	{
		m_list.InsertString(n,_T("chk_4428()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("chk_4428()  error!"));
	}
	n++;
	st = srd_4428(icdev,35,15,data_buffer);
	if(st == 0)
	{
		m_list.InsertString(n,_T("srd_4428()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("srd_4428()  error!"));
	}
}

void CVCnetDlg::OnBnClickedButton3()
{
	// TODO: 在此添加控件通知处理程序代码
	int n=0;
	int st;
	unsigned char data_buffer[16];
	m_list.ResetContent();
	st = chk_1604(icdev);
	if(st == 0)
	{
		m_list.InsertString(n,_T("chk_1604()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("chk_1604()  error!"));
	}
	n++;
	st = srd_1604(icdev,20,35,15,data_buffer);
	if(st == 0)
	{
		m_list.InsertString(n,_T("srd_1604()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("srd_1604()  error!"));
	}
}

void CVCnetDlg::OnBnClickedButton5()
{
	// TODO: 在此添加控件通知处理程序代码
	int n=0;
	int st;
	unsigned char data_buffer[16];
	m_list.ResetContent();
	st = chk_24c01a(icdev);
	if(st == 0)
	{
		m_list.InsertString(n,_T("chk_24c01a()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("chk_24c01a()  error!"));
	}
	n++;
	st = srd_24c01a(icdev,35,15,data_buffer);
	if(st == 0)
	{
		m_list.InsertString(n,_T("srd_24c01a()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("srd_24c01a()  error!"));
	}
}

void CVCnetDlg::OnBnClickedButton4()
{
	// TODO: 在此添加控件通知处理程序代码
	int n=0;
	int st;
	unsigned char databuff[1000]={0x00,0x84,0x00,0x00,0x08};
	unsigned char receive_data[1000];
	unsigned char data_buffer[40];
	m_list.ResetContent();
	st = cpu_reset(icdev,data_buffer);
	if(st == 0)
	{
		m_list.InsertString(n,_T("cpu_reset()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("cpu_reset()  error!"));
	}
	n++;
	st = cpu_protocol(icdev,5,databuff,receive_data);
	if(st == 0)
	{
		m_list.InsertString(n,_T("cpu_protocol()  Ok!"));
	}
	else
	{
		m_list.InsertString(n,_T("cpu_protocol()  error!"));
	}
}
