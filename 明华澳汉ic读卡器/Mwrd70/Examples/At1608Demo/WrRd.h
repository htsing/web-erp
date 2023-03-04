#if !defined(AFX_WRRD_H__B96986A1_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_WRRD_H__B96986A1_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WrRd.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWrRd dialog

class CWrRd : public CDialog
{
// Construction
public:
	CWrRd(CWnd* pParent = NULL);   // standard constructor
    int m_Type;
// Dialog Data
	//{{AFX_DATA(CWrRd)
	enum { IDD = IDD_DIALOG4 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWrRd)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CWrRd)
	afx_msg void OnRadio1();
	afx_msg void OnRadio2();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WRRD_H__B96986A1_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
