#if !defined(AFX_ZONE_H__B96986A0_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_ZONE_H__B96986A0_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Zone.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CZone dialog

class CZone : public CDialog
{
// Construction
public:
	CZone(CWnd* pParent = NULL);   // standard constructor
    int m_Zone;
// Dialog Data
	//{{AFX_DATA(CZone)
	enum { IDD = IDD_DIALOG3 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CZone)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CZone)
	afx_msg void On0();
	afx_msg void On1();
	afx_msg void On2();
	afx_msg void On3();
	afx_msg void On4();
	afx_msg void On5();
	afx_msg void On6();
	afx_msg void On7();
	afx_msg void On100();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ZONE_H__B96986A0_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
