#if !defined(AFX_MIMA_H__B96986A2_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_MIMA_H__B96986A2_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// mima.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// Cmima dialog

class Cmima : public CDialog
{
// Construction
public:
	Cmima(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(Cmima)
	enum { IDD = IDD_DIALOG5 };
	CString	m_Mima;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(Cmima)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(Cmima)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MIMA_H__B96986A2_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
