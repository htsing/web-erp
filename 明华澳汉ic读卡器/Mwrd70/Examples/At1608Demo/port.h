#if !defined(AFX_PORT_H__7A1B1701_2DF9_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_PORT_H__7A1B1701_2DF9_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// port.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// Cport dialog

class Cport : public CDialog
{
// Construction
public:
	Cport(CWnd* pParent = NULL);   // standard constructor
     int m_Port;
// Dialog Data
	//{{AFX_DATA(Cport)
	enum { IDD = IDD_DIALOG2 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(Cport)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(Cport)
	afx_msg void Onport1();
	afx_msg void Onport2();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PORT_H__7A1B1701_2DF9_11D5_A902_00E04C6B95B9__INCLUDED_)
