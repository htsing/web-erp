#if !defined(AFX_RDZONE_H__B96986A3_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_RDZONE_H__B96986A3_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Rdzone.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CRdzone dialog

class CRdzone : public CDialog
{
// Construction
public:
	CRdzone(CWnd* pParent = NULL);   // standard constructor
    int m_Zone;
// Dialog Data
	//{{AFX_DATA(CRdzone)
	enum { IDD = IDD_DIALOG6 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRdzone)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CRdzone)
	afx_msg void On1();
	afx_msg void On100();
	afx_msg void On2();
	afx_msg void On3();
	afx_msg void On4();
	afx_msg void On5();
	afx_msg void On6();
	afx_msg void On7();
	afx_msg void On0();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RDZONE_H__B96986A3_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
