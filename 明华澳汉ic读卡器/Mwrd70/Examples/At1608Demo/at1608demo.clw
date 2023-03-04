; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CConfig
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "at1608demo.h"

ClassCount=12
Class1=CAt1608demoApp
Class2=CAt1608demoDlg
Class3=CAboutDlg

ResourceCount=12
Resource1=IDD_DIALOG8
Resource2=IDR_MAINFRAME
Resource3=IDD_DIALOG6
Class4=CBAUD
Resource4=IDD_ABOUTBOX
Class5=Cport
Resource5=IDD_DIALOG4
Resource6=IDD_AT1608DEMO_DIALOG
Class6=CZone
Class7=CWrRd
Resource7=IDD_DIALOG7
Class8=Cmima
Resource8=IDD_DIALOG5
Class9=CRdzone
Resource9=IDD_DIALOG1
Class10=CAU
Resource10=IDD_DIALOG2
Class11=CAddr
Resource11=IDD_DIALOG3
Class12=CConfig
Resource12=IDD_DIALOG9

[CLS:CAt1608demoApp]
Type=0
HeaderFile=at1608demo.h
ImplementationFile=at1608demo.cpp
Filter=N
LastObject=CAt1608demoApp

[CLS:CAt1608demoDlg]
Type=0
HeaderFile=at1608demoDlg.h
ImplementationFile=at1608demoDlg.cpp
Filter=D
LastObject=CAt1608demoDlg
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=at1608demoDlg.h
ImplementationFile=at1608demoDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_AT1608DEMO_DIALOG]
Type=1
Class=CAt1608demoDlg
ControlCount=12
Control1=IDCANCEL,button,1342242816
Control2=IDC_INIT,button,1342242816
Control3=IDC_RESET,button,1476460544
Control4=IDC_STATIC1,static,1342308352
Control5=IDC_PASS,button,1476460544
Control6=IDC_RD,button,1476460544
Control7=IDC_WR,button,1476460544
Control8=IDC_AUTHORIZAT,button,1476460544
Control9=IDC_STATIC2,static,1342308352
Control10=IDC_STATIC3,static,1342308352
Control11=IDC_STATIC4,static,1342308352
Control12=IDC_STATIC5,static,1342308352

[DLG:IDD_DIALOG1]
Type=1
Class=CBAUD
ControlCount=7
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_9600,button,1342308361
Control4=IDC_19200,button,1342177289
Control5=IDC_38400,button,1342177289
Control6=IDC_57600,button,1342177289
Control7=IDC_115200,button,1342177289

[CLS:CBAUD]
Type=0
HeaderFile=BAUD.h
ImplementationFile=BAUD.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CBAUD

[DLG:IDD_DIALOG2]
Type=1
Class=Cport
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_port1,button,1342308361
Control4=IDC_port2,button,1342177289

[CLS:Cport]
Type=0
HeaderFile=port.h
ImplementationFile=port.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_port2

[DLG:IDD_DIALOG3]
Type=1
Class=CZone
ControlCount=11
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_0,button,1342308361
Control4=IDC_1,button,1342177289
Control5=IDC_2,button,1342177289
Control6=IDC_3,button,1342177289
Control7=IDC_4,button,1342177289
Control8=IDC_5,button,1342177289
Control9=IDC_6,button,1342177289
Control10=IDC_7,button,1342177289
Control11=IDC_100,button,1342177289

[DLG:IDD_DIALOG4]
Type=1
Class=CWrRd
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_RADIO1,button,1342308361
Control4=IDC_RADIO2,button,1342177289

[CLS:CZone]
Type=0
HeaderFile=Zone.h
ImplementationFile=Zone.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CZone

[CLS:CWrRd]
Type=0
HeaderFile=WrRd.h
ImplementationFile=WrRd.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CWrRd

[DLG:IDD_DIALOG5]
Type=1
Class=Cmima
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_EDIT1,edit,1350631552
Control4=IDC_STATIC,static,1342308352

[CLS:Cmima]
Type=0
HeaderFile=mima.h
ImplementationFile=mima.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_EDIT1

[DLG:IDD_DIALOG6]
Type=1
Class=CRdzone
ControlCount=11
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_0,button,1342308361
Control4=IDC_1,button,1342177289
Control5=IDC_2,button,1342177289
Control6=IDC_3,button,1342177289
Control7=IDC_4,button,1342177289
Control8=IDC_5,button,1342177289
Control9=IDC_6,button,1342177289
Control10=IDC_7,button,1342177289
Control11=IDC_100,button,1342177289

[CLS:CRdzone]
Type=0
HeaderFile=Rdzone.h
ImplementationFile=Rdzone.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CRdzone

[DLG:IDD_DIALOG7]
Type=1
Class=CAU
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_EDIT1,edit,1350631552
Control4=IDC_STATIC,static,1342308352

[CLS:CAU]
Type=0
HeaderFile=AU.h
ImplementationFile=AU.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_EDIT1

[DLG:IDD_DIALOG8]
Type=1
Class=CAddr
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_EDIT1,edit,1350631552

[CLS:CAddr]
Type=0
HeaderFile=Addr.h
ImplementationFile=Addr.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_DIALOG9]
Type=1
Class=CConfig
ControlCount=8
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_ADDR,edit,1350631552
Control4=IDC_LEN,edit,1350631552
Control5=IDC_DATA,edit,1350631552
Control6=IDC_STATIC,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_STATIC,static,1342308352

[CLS:CConfig]
Type=0
HeaderFile=Config.h
ImplementationFile=Config.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_LEN

