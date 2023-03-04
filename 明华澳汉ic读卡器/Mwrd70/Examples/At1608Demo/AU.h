#if !defined(AFX_AU_H__B96986A4_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_AU_H__B96986A4_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// AU.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CAU dialog

class CAU : public CDialog
{
// Construction
public:
	CAU(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CAU)
	enum { IDD = IDD_DIALOG7 };
	CString	m_Au;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAU)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CAU)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_AU_H__B96986A4_2E5B_11D5_A902_00E04C6B95B9__INCLUDED_)
