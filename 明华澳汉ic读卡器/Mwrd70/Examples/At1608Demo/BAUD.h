#if !defined(AFX_BAUD_H__7A1B1700_2DF9_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_BAUD_H__7A1B1700_2DF9_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// BAUD.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CBAUD dialog

class CBAUD : public CDialog
{
// Construction
public:
	CBAUD(CWnd* pParent = NULL);   // standard constructor
    int m_Baud;
// Dialog Data
	//{{AFX_DATA(CBAUD)
	enum { IDD = IDD_DIALOG1 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CBAUD)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CBAUD)
	afx_msg void On115200();
	afx_msg void On19200();
	afx_msg void On38400();
	afx_msg void On57600();
	afx_msg void On9600();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_BAUD_H__7A1B1700_2DF9_11D5_A902_00E04C6B95B9__INCLUDED_)
