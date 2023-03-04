#if !defined(AFX_ADDR_H__B96986A5_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_ADDR_H__B96986A5_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Addr.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CAddr dialog

class CAddr : public CDialog
{
// Construction
public:
	CAddr(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CAddr)
	enum { IDD = IDD_DIALOG8 };
	int		m_Number;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAddr)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CAddr)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ADDR_H__B96986A5_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
