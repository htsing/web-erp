// at1608demoDlg.h : header file
//

#if !defined(AFX_AT1608DEMODLG_H__C0A6D146_2D96_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_AT1608DEMODLG_H__C0A6D146_2D96_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CAt1608demoDlg dialog

class CAt1608demoDlg : public CDialog
{
// Construction
public:
	CAt1608demoDlg(CWnd* pParent = NULL);	// standard constructor
    HANDLE handle;
// Dialog Data
	//{{AFX_DATA(CAt1608demoDlg)
	enum { IDD = IDD_AT1608DEMO_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAt1608demoDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CAt1608demoDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnInit();
	virtual void OnCancel();
	afx_msg void OnReset();
	afx_msg void OnClose();
	afx_msg void OnPass();
	afx_msg void OnRd();
	afx_msg void OnWr();
	afx_msg void OnAuthorizat();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_AT1608DEMODLG_H__C0A6D146_2D96_11D5_A902_00E04C6B95B9__INCLUDED_)
