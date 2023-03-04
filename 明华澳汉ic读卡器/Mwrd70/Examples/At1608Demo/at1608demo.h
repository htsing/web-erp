// at1608demo.h : main header file for the AT1608DEMO application
//

#if !defined(AFX_AT1608DEMO_H__C0A6D144_2D96_11D5_A902_00E04C6B95B9__INCLUDED_)
#define AFX_AT1608DEMO_H__C0A6D144_2D96_11D5_A902_00E04C6B95B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CAt1608demoApp:
// See at1608demo.cpp for the implementation of this class
//

class CAt1608demoApp : public CWinApp
{
public:
	CAt1608demoApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAt1608demoApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CAt1608demoApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_AT1608DEMO_H__C0A6D144_2D96_11D5_A902_00E04C6B95B9__INCLUDED_)
