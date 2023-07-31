unit frmUHFReader86demomain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,fProgressbar, StdCtrls, ComCtrls,UHFReader86_Head,UHFReader86_DLL_Head,
  ActnList, Buttons, ExtCtrls, Menus, ToolWin;

type
  TfrmUHFReader86main = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet_EPCC1G2: TTabSheet;
    StatusBar1: TStatusBar;
    GroupBox_ReaderInfo: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit_Version: TEdit;
    Edit_ComAdr: TEdit;
    Edit_scantime: TEdit;
    Edit_Type: TEdit;
    Button3: TButton;
    Edit_dmaxfre: TEdit;
    Edit_dminfre: TEdit;
    Edit_power: TEdit;
    EPCC1G2: TCheckBox;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Button5: TButton;
    ComboBox_baud: TComboBox;
    Edit_NewComAdr: TEdit;
    ComboBox_scantime: TComboBox;
    Button1: TButton;
    ComboBox_dminfre: TComboBox;
    ComboBox_dmaxfre: TComboBox;
    ComboBox_PowerDbm: TComboBox;
    CheckBox_SameFre: TCheckBox;
    GroupBox7: TGroupBox;
    RadioButton_band2: TRadioButton;
    RadioButton_band3: TRadioButton;
    RadioButton_band4: TRadioButton;
    RadioButton_band5: TRadioButton;
    GroupBox11: TGroupBox;
    ListView_EPC: TListView;
    GroupBox17: TGroupBox;
    Label25: TLabel;
    SpeedButton_Query: TSpeedButton;
    ComboBox_IntervalTime: TComboBox;
    GroupBox9: TGroupBox;
    Label33: TLabel;
    Button_DestroyCard: TButton;
    Edit_DestroyCode: TEdit;
    ComboBox_EPC3: TComboBox;
    GroupBox23: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Edit_AccessCode3: TEdit;
    Button_WriteEPC_G2: TButton;
    Edit_WriteEPC: TEdit;
    GroupBox20: TGroupBox;
    Label32: TLabel;
    ComboBox_EPC4: TComboBox;
    Edit_AccessCode4: TEdit;
    Button_SetReadProtect_G2: TButton;
    Button_SetMultiReadProtect_G2: TButton;
    Button_RemoveReadProtect_G2: TButton;
    Button_CheckReadProtected_G2: TButton;
    GroupBox21: TGroupBox;
    Label35: TLabel;
    SpeedButton_CheckAlarm_G2: TSpeedButton;
    Label_Alarm: TLabel;
    Button_SetEASAlarm_G2: TButton;
    ComboBox_EPC5: TComboBox;
    Edit_AccessCode5: TEdit;
    GroupBox24: TGroupBox;
    Alarm_G2: TRadioButton;
    NoAlarm_G2: TRadioButton;
    GroupBox22: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Button_LockUserBlock_G2: TButton;
    ComboBox_BlockNum: TComboBox;
    ComboBox_EPC6: TComboBox;
    Edit_AccessCode6: TEdit;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    ComboBox_EPC1: TComboBox;
    Button_SetProtectState: TButton;
    Edit_AccessCode1: TEdit;
    GroupBox1: TGroupBox;
    P_Reserve: TRadioButton;
    P_EPC: TRadioButton;
    P_TID: TRadioButton;
    P_User: TRadioButton;
    GroupBox16: TGroupBox;
    GroupBox4: TGroupBox;
    DestroyCode: TRadioButton;
    AccessCode: TRadioButton;
    NoProect: TRadioButton;
    Always: TRadioButton;
    Proect: TRadioButton;
    AlwaysNot: TRadioButton;
    GroupBox18: TGroupBox;
    NoProect2: TRadioButton;
    AlwaysNot2: TRadioButton;
    Proect2: TRadioButton;
    Always2: TRadioButton;
    GroupBox10: TGroupBox;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SpeedButton_Read_G2: TSpeedButton;
    ComboBox_EPC2: TComboBox;
    Edit_AccessCode2: TEdit;
    Edit_WriteData: TEdit;
    Edit_WordPtr: TEdit;
    Edit_Len: TEdit;
    Memo_DataShow: TMemo;
    GroupBox6: TGroupBox;
    C_Reserve: TRadioButton;
    C_EPC: TRadioButton;
    C_TID: TRadioButton;
    C_User: TRadioButton;
    Button16: TButton;
    Button_DataWrite: TButton;
    Button_BlockErase: TButton;
    Timer_Test_: TTimer;
    Timer_G2_Read: TTimer;
    Button_BlockWrite: TButton;
    Timer_G2_Alarm: TTimer;
    Timer1: TTimer;
    Timer_Test_6B: TTimer;
    Timer_6B_ReadWrite: TTimer;
    TabSheet3: TTabSheet;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    ListBox1: TListBox;
    Button21: TButton;
    Button23: TButton;
    Button24: TButton;
    GroupBox8: TGroupBox;
    Radio_beepEn: TRadioButton;
    Radio_beepDis: TRadioButton;
    Button_Beep: TButton;
    Group_Module: TGroupBox;
    Button_SetGPIO: TButton;
    Button_GetGPIO: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox31: TGroupBox;
    Label52: TLabel;
    Edit6: TEdit;
    Label65: TLabel;
    Edit11: TEdit;
    CheckBox_TID: TCheckBox;
    CheckBox18: TCheckBox;
    Edit_PC: TEdit;
    MainMenu1: TMainMenu;
    Operation1: TMenuItem;
    Search1: TMenuItem;
    clear1: TMenuItem;
    xxit1: TMenuItem;
    tools1: TMenuItem;
    IE1: TMenuItem;
    elnet1: TMenuItem;
    Ping1: TMenuItem;
    Language1: TMenuItem;
    English1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    GroupBox43: TGroupBox;
    GroupBox_COM: TGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    Label49: TLabel;
    ComboBox_COM: TComboBox;
    Button2: TButton;
    Button4: TButton;
    StaticText1: TStaticText;
    Edit_CmdComAddr: TEdit;
    ComboBox_AlreadyOpenCOM: TComboBox;
    ComboBox_baud2: TComboBox;
    GroupBox45: TGroupBox;
    Edit15: TEdit;
    Button8: TButton;
    Label79: TLabel;
    Edit17: TEdit;
    Label81: TLabel;
    Edit18: TEdit;
    CheckBox19: TCheckBox;
    Timer2: TTimer;
    CheckBox4: TCheckBox;
    ActionList1: TActionList;
    Action_GetReaderInformation: TAction;
    Action_OpenCOM: TAction;
    Action_OpenRf: TAction;
    Action_CloseCOM: TAction;
    Action_CloseRf: TAction;
    Action_WriteComAdr: TAction;
    Action_WriteInventoryScanTime: TAction;
    Action_OpenTestMode: TAction;
    Action_CloseTestMode: TAction;
    Action_GetSystemInformation: TAction;
    Action_SetReaderInformation: TAction;
    Action_SetReaderInformation_0: TAction;
    Action_Inventory: TAction;
    Action_ShowOrChangeData: TAction;
    Action_SetProtectState: TAction;
    Action_DestroyCard: TAction;
    Action_SelfTestMode: TAction;
    Action_SelfTestMode2: TAction;
    Action_RfOutput: TAction;
    Action_RfOutput2: TAction;
    Action_SetDAC: TAction;
    Action_GetDAC: TAction;
    Action_SetPowerParameter: TAction;
    Action_SolidifyPower: TAction;
    Action_CheckPowerParameter: TAction;
    Action_GetStartInformation: TAction;
    Action_ReadPowerParameter: TAction;
    Action_Inventroy_6B: TAction;
    Action_Query_6B: TAction;
    Action_WriteData_6B: TAction;
    Action_ReadData_6B: TAction;
    Action_LockByte_6B: TAction;
    Action_CheckLock_6B: TAction;
    Action_Query2_6B: TAction;
    Action_ShowOrChangeData_write: TAction;
    Action_ShowOrChangeData_BlockErase: TAction;
    Action_SetReadProtect_G2: TAction;
    Action_RemoveReadProtect_G2: TAction;
    Action_SetMultiReadProtect_G2: TAction;
    Action_CheckReadProtected_G2: TAction;
    Action_SetEASAlarm_G2: TAction;
    Action_CheckEASAlarm_G2: TAction;
    Action_WriteEPC_G2: TAction;
    Action_LockUserBlock_G2: TAction;
    Action_WriteList: TAction;
    Action_SolidifyPWMandPowerlist: TAction;
    Action_DeleteRfOutput: TAction;
    Action_ShowOrChangeData_BlockWrite: TAction;
    Action_TagProtocol: TAction;
    Label102: TLabel;
    Com_Q: TComboBox;
    Label103: TLabel;
    Com_S: TComboBox;
    GroupBox32: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label21: TLabel;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    R_EPC: TRadioButton;
    R_TID: TRadioButton;
    R_User: TRadioButton;
    Edit1: TEdit;
    TabSheet_6B: TTabSheet;
    GroupBox13: TGroupBox;
    ListView_ID_6B: TListView;
    GroupBox19: TGroupBox;
    Label30: TLabel;
    SpeedButton_Query_6B: TSpeedButton;
    ComboBox_IntervalTime_6B: TComboBox;
    Byone_6B: TRadioButton;
    Bycondition_6B: TRadioButton;
    GroupBox14: TGroupBox;
    Label34: TLabel;
    Label31: TLabel;
    Edit_Query_StartAddress_6B: TEdit;
    Edit_ConditionContent_6B: TEdit;
    Less_6B: TRadioButton;
    Different_6B: TRadioButton;
    Same_6B: TRadioButton;
    Greater_6B: TRadioButton;
    GroupBox15: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    SpeedButton_Read_6B: TSpeedButton;
    SpeedButton_Write_6B: TSpeedButton;
    ComboBox_ID1_6B: TComboBox;
    Edit_WriteData_6B: TEdit;
    Edit_StartAddress_6B: TEdit;
    Edit_Len_6B: TEdit;
    Memo_DataShow_6B: TMemo;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    ISO180006B: TCheckBox;
    Label22: TLabel;
    ComboBox1: TComboBox;
    CheckBox5: TCheckBox;
    TabSheet2: TTabSheet;
    GroupBox12: TGroupBox;
    btStartBuffer: TButton;
    rb_BEPC: TRadioButton;
    rb_BTID: TRadioButton;
    GroupBox25: TGroupBox;
    Label23: TLabel;
    lb_Num: TLabel;
    GroupBox26: TGroupBox;
    btGetBuffer: TButton;
    btGetAndClBuffer: TButton;
    btClearBuffer: TButton;
    btGetBufferNum: TButton;
    ListView1: TListView;
    Label26: TLabel;
    btClear: TButton;
    GroupBox27: TGroupBox;
    rb_128: TRadioButton;
    rb_496: TRadioButton;
    bt_setlen: TButton;
    bt_getlen: TButton;
    ExtRead: TButton;
    ExtWrite: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Action_GetReaderInformationExecute(Sender: TObject);
    procedure ComboBox_AlreadyOpenCOMCloseUp(Sender: TObject);
    procedure Action_SetReaderInformationExecute(Sender: TObject);
    procedure RadioButton_band1Click(Sender: TObject);
    procedure RadioButton_band2Click(Sender: TObject);
    procedure RadioButton_band3Click(Sender: TObject);
    procedure RadioButton_band4Click(Sender: TObject);
    procedure RadioButton_band5Click(Sender: TObject);
    procedure Action_GetReaderInformationUpdate(Sender: TObject);
    procedure Action_RfOutputExecute(Sender: TObject);
    procedure CheckBox_SameFreClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton_QueryClick(Sender: TObject);
    procedure Action_InventoryExecute(Sender: TObject);
    procedure Timer_Test_Timer(Sender: TObject);
    procedure ComboBox_IntervalTimeChange(Sender: TObject);
    procedure SpeedButton_Read_G2Click(Sender: TObject);
    procedure Timer_G2_ReadTimer(Sender: TObject);
    procedure Action_ShowOrChangeDataExecuteExecute(Sender: TObject);
    procedure Action_SetProtectStateExecute(Sender: TObject);
    procedure Action_SetProtectStateUpdate(Sender: TObject);
    procedure Action_DestroyCardExecute(Sender: TObject);
    procedure Action_WriteEPC_G2Execute(Sender: TObject);
    procedure Action_SetReadProtect_G2Execute(Sender: TObject);
    procedure Action_SetMultiReadProtect_G2Execute(Sender: TObject);
    procedure Action_RemoveReadProtect_G2Execute(Sender: TObject);
    procedure Action_CheckReadProtected_G2Execute(Sender: TObject);
    procedure Action_SetEASAlarm_G2Execute(Sender: TObject);
    procedure SpeedButton_CheckAlarm_G2Click(Sender: TObject);
    procedure Timer_G2_AlarmTimer(Sender: TObject);
    procedure Action_LockUserBlock_G2Execute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button_BeepClick(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Button_clearBufferClick(Sender: TObject);
    procedure Button_SetGPIOClick(Sender: TObject);
    procedure Button_GetGPIOClick(Sender: TObject);
    procedure ComboBox_dminfreSelect(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure ComboBox_COMChange(Sender: TObject);
    procedure CheckBox_TIDClick(Sender: TObject);
    procedure Edit_WriteDataKeyPress(Sender: TObject; var Key: Char);
    procedure C_UserClick(Sender: TObject);
    procedure C_TIDClick(Sender: TObject);
    procedure C_ReserveClick(Sender: TObject);
    procedure C_EPCClick(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure Edit_WriteDataChange(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Action_Query_6BExecute(Sender: TObject);
    procedure Action_Inventroy_6BExecute(Sender: TObject);
    procedure Action_LockByte_6BExecute(Sender: TObject);
    procedure Action_CheckLock_6BExecute(Sender: TObject);
    procedure Action_CheckLock_6BUpdate(Sender: TObject);
    procedure Timer_Test_6BTimer(Sender: TObject);
    procedure SpeedButton_Read_6BClick(Sender: TObject);
    procedure Timer_6B_ReadWriteTimer(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure ComboBox_IntervalTime_6BChange(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btStartBufferClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btClearBufferClick(Sender: TObject);
    procedure btGetBufferNumClick(Sender: TObject);
    procedure btGetBufferClick(Sender: TObject);
    procedure btGetAndClBufferClick(Sender: TObject);
    procedure bt_setlenClick(Sender: TObject);
    procedure bt_getlenClick(Sender: TObject);
    procedure ExtWriteClick(Sender: TObject);
    procedure ExtReadClick(Sender: TObject);
  private
    { Private declarations }
     fAppClosed: Boolean; //在测试模式下响应关闭应用程序
    fComAdr: Byte; //当前操作的ComAdr
    ComIsOpen:Boolean;
    ferrorcode:LongInt;
    fBaud:Byte;
    fdminfre:Real;
    fdmaxfre:Real;
    fCmdRet: LongInt; //所有执行指令的返回值
    fOpenComIndex: Integer; //打开的串口索引号
    ReaderType:Byte;
     x_z,y_f:Real;
    Suc_count:LongInt;
    Query_count:LongInt;
    card_Count:DWORD;
     fInventory_EPC_List: string; //存贮询查列表（如果读取的数据没有变化，则不进行刷新）
    fInventory_TID_List: string; //存贮询查列表（如果读取的数据没有变化，则不进行刷新）
    Istemps02Save: boolean;
    temps02Save: string; // 存储继续询查前上次已经询查到的卡
    fIsInventoryScan : Boolean;
    fTimer_G2_Read:Boolean;
    fTimer_G2_Alarm: Boolean;
    fisinventoryscan_6B:Boolean;
    fTimer_6B_ReadWrite:Boolean;
    ISscanstring:Boolean ;
    breakflag:Boolean;
    fOperEPC: array[0..35] of Char;
    fPassWord:array[0..4] of Char;
    fOperID_6B: array[0..8] of Char;
    fLogStrings:Tstrings;
    EnableFlag:Boolean;
    SeriaATflag:Boolean;
    Inant,FastFlag,ScanTime,Target:Byte;
    ReaderType_s:Byte;
    AA_times:LongInt;
  public
    m_hDevArray:array[0..100]of LongInt;
    select_index:LongInt;
    function getStr(pStr: pchar; len: Integer): string;
    function getHexStr(sBinStr: string): string;
    procedure getCharStr(s:string;cStr: pchar);
    procedure InitComList;
    procedure InitReaderList;
    procedure RefreshStatus;
    procedure ClearLastInfo;
    procedure AddCmdLog(cmd, cmdName: string; cmdRet: Byte; errorCode: LongInt = -1);
    procedure AddCmdLog2(cmd, cmdName: string; cmdRet: Byte; CMDReturn:string;errorCode: LongInt = -1); //操作状态成功或错误提示函数
    function RoundClassic(R: Real): Int64;
    function getNoStr(no: Integer; noLen: Integer): string;
    Function Str_IntToBin(Int: LongInt; Size: Integer): String;
    function BitStrToHextStr(const BitStr: String): String;
    procedure SearchCallback1(var devIP:DWORD;mac, devName:PChar; dev:LongInt) ;
    procedure InventoryMz4() ;
    { Public declarations }
  end;

var
  frmUHFReader86main: TfrmUHFReader86main;
  frmcomportindex:LongInt;
implementation

uses shellapi;

{$R *.dfm}
function TfrmUHFReader86main.getStr(pStr: pchar; len: Integer): string;
var
  i: Integer;
begin
  result := '';
  for i := 0 to len - 1 do
    result := result + (pStr + i)^;
end;
function TfrmUHFReader86main.getHexStr(sBinStr: string): string; //获得十六进制字符串
var
  i: Integer;
begin
  result := '';
  for i := 1 to Length(sBinStr) do
    result := result + IntToHex(ord(sBinStr[i]), 2);
end;

procedure TfrmUHFReader86main.getCharStr(s:string;cStr: pchar); //获得字符串
var
  i: Integer;
begin
  try
    for i := 0 to Length(s) div 2-1 do
    (cStr+i)^ := Char(StrToInt('$' + copy(s, i * 2 + 1, 2)));
  except
  end;
end;
procedure TfrmUHFReader86main.InitReaderList;
var
  i:Integer;
begin
  for i:=0 to 62 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(902.6+i*0.4)+' MHz');
    ComboBox_dmaxfre.Items.Add(floattostr(902.6+i*0.4)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 62;
  for i:=$03 to $ff do
    ComboBox_scantime.Items.Add(IntToStr(i)+'*100ms');
  ComboBox_scantime.ItemIndex := 7;


  
   for i:=$03 to $ff do
    ComboBox1.Items.Add(IntToStr(i)+'*100ms');
  ComboBox1.ItemIndex := 7;

  i:=10;
  while i<=1000 do
  begin
    ComboBox_IntervalTime.Items.Add(IntToStr(i)+'ms');
    i:=i+10;
  end;
  ComboBox_IntervalTime.ItemIndex :=0;
  for i:= 0 to 6 do
    ComboBox_BlockNum.Items.Add(IntToStr(i*2)+'和'+IntToStr(i*2+1));
  ComboBox_BlockNum.ItemIndex :=0;

   for i:=0 to 15 do
  Com_Q.Items.Add(IntToStr(i));
  Com_Q.ItemIndex:=1;

  for i:=0 to 3 do
  Com_S.Items.Add(IntToStr(i));
  Com_S.ItemIndex:=0;



   i:=40;
  while i<=300 do
  begin
  ComboBox_IntervalTime_6B.Items.Add(IntToStr(i)+'ms');
  i:=i+10;
  end;
  ComboBox_IntervalTime_6B.ItemIndex :=1;

end;
procedure TfrmUHFReader86main.InitComList; //串口号初始化列表函数
var
  i: Integer;
begin
  ComboBox_COM.Items.Clear;
  ComboBox_COM.Items.Add(' AUTO');
  for i := 1 to 12 do
    ComboBox_COM.Items.Add(' COM' + IntToStr(i));
  ComboBox_COM.Items.Add(' USB' );
  ComboBox_COM.ItemIndex := 0;
  RefreshStatus;
end;
procedure TfrmUHFReader86main.RefreshStatus; //通讯端口更新函数
begin
  if not (ComboBox_AlreadyOpenCOM.Items.Count <> 0) then
    StatusBar1.Panels.Items[1].Text := '通讯关闭'
  else
    StatusBar1.Panels.Items[1].Text := ' COM' + IntToStr(frmcomportindex);
  StatusBar1.Panels.Items[0].Text :='';
  StatusBar1.Panels.Items[2].Text :='';
end;
procedure TfrmUHFReader86main.FormCreate(Sender: TObject);
begin
  fOpenComIndex := -1;
  fComAdr := 0;
  ferrorcode:= -1;
  fBaud:=5;
  InitComList;
  InitReaderList;
  ComboBox_baud2.ItemIndex:=3;
  RadioButton_band2.Checked:=True;
  ComboBox_PowerDbm.ItemIndex:=8;
  ComboBox_baud.ItemIndex:=3;
  R_EPC.Checked:=True;
  C_EPC.Checked:=True;
  P_EPC.Checked:=True;
  Radio_beepEn.Checked:=True;

  Istemps02Save := false;
  fAppClosed := False;
  Timer_Test_.Enabled := False;
  Timer_G2_Alarm.Enabled := False;
  Timer_G2_Read.Enabled := False;

  PageControl1.TabIndex:=0;
  fIsInventoryScan:=False;
  fisinventoryscan_6B:=False;
  ISscanstring:=False;
  AccessCode.Checked:=True;
  NoProect.Checked:=True;
  NoProect2.Checked:=True;
  Alarm_G2.Checked:=true;
  breakflag:=False;
   fLogStrings := TStringList.Create;
   EnableFlag:=False;
   CheckBox_TID.Checked:=False;

   SeriaATflag:=False;
   Byone_6B.Checked:=True;
end;

procedure TfrmUHFReader86main.Button2Click(Sender: TObject);
var
  port,i: LongInt;
  openresult :byte;
begin
  openresult:=48;
  Screen.Cursor := crHourGlass;
  if  Edit_CmdComAddr.Text='' then
  Edit_CmdComAddr.Text:='FF';
  fComAdr := StrToInt('$' + Edit_CmdComAddr.Text); // $FF;
  try
      if ComboBox_COM.ItemIndex = 0 then //Auto
      begin
        fbaud:=ComboBox_baud2.ItemIndex;
        if fbaud>2 then fbaud:=fbaud+2;
        openresult := AutoOpenComPort(port,fComAdr,fBaud,frmcomportindex);
        fOpenComIndex := frmcomportindex;
        if openresult = 0 then
        begin
            if(fBaud>3)then
              ComboBox_baud.ItemIndex:=fBaud-2
            else
              ComboBox_baud.ItemIndex:=fBaud;
          Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
          if (fCmdRet=$35) or (fCmdRet=$30)then
          begin
           Application.MessageBox('串口通讯错误或被占用', '信息提示', MB_ICONINFORMATION);
           CloseSpecComPort(frmcomportindex) ;
           exit;
          end;
        end;
      end
      else if(ComboBox_COM.ItemIndex = 13)then
      begin
        openresult := OpenUSBPort(fComAdr,frmcomportindex);
        fOpenComIndex := frmcomportindex;
        if openresult = 0 then
        begin
          Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
          if (fCmdRet=$35) or (fCmdRet=$30)then
          begin
           Application.MessageBox('USB通讯错误或被占用', '信息提示', MB_ICONINFORMATION);
           CloseSpecComPort(frmcomportindex) ;
           exit;
          end;
        end;
      end
      else
      begin
        port := strtoint(copy(ComboBox_COM.items[ComboBox_COM.itemindex],5,3));
         for i:=6 downto 0 do
        begin
          fBaud:=i;
          if(fBaud=3) or (fBaud=4)then
          Continue;
          openresult := opencomport(port,fComAdr,fBaud,frmcomportindex);
          fOpenComIndex := frmcomportindex;
          if openresult= $35 then
          begin
            Application.MessageBox('串口已打开', '信息提示',MB_ICONINFORMATION);
            Exit;
          end;
          if openresult = 0 then
          begin
            if(fBaud>3)then
              ComboBox_baud.ItemIndex:=fBaud-2
            else
              ComboBox_baud.ItemIndex:=fBaud;
            Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
            if (fCmdRet=$35) or (fCmdRet=$30)then
            begin
             Application.MessageBox('串口通讯错误或被占用', '信息提示', MB_ICONINFORMATION);
             CloseSpecComPort(frmcomportindex) ;
            end;
            Break;
          end;
        end;
      end;
  finally
    Screen.Cursor := crDefault;
  end;

  if (fOpenComIndex <> -1) and
     (openresult <> $35)  and
     (openresult <> $30)  then
  begin
    if(fOpenComIndex>255)and(fOpenComIndex<1024)then
     ComboBox_AlreadyOpenCOM.Items.Add('USB'+inttostr(fOpenComIndex)) 
    else
     ComboBox_AlreadyOpenCOM.Items.Add('COM'+inttostr(fOpenComIndex)) ;
    ComboBox_AlreadyOpenCOM.ItemIndex := ComboBox_AlreadyOpenCOM.ItemIndex + 1;
    // Button19.Enabled:=True;
    ComIsOpen:=True;
  end;
  if (fOpenComIndex = -1) and
     (openresult = $30)  then
  begin
    Application.MessageBox('通讯错误', '信息提示', MB_ICONINFORMATION);
  end;

  if (ComboBox_AlreadyOpenCOM.Items.Count <> 0) then
  begin
    if(Edit_ComAdr.Text<>'')then
    fComAdr := StrToInt('$' +Edit_ComAdr.Text);
    frmcomportindex := strtoint(copy(ComboBox_AlreadyOpenCOM.items[ComboBox_AlreadyOpenCOM.itemindex],4,3));
  end;
  RefreshStatus;
end;

procedure TfrmUHFReader86main.Button4Click(Sender: TObject);
var
port:Integer;
SelectCom :string;
begin
ClearLastInfo;
  try
    if ComboBox_AlreadyOpenCOM.itemindex < 0 then
      begin
        Application.MessageBox('请选择要关闭的端口', '信息提示', MB_ICONINFORMATION);
        exit;
      end
    else
    begin
      SelectCom := copy(ComboBox_AlreadyOpenCOM.Items[ComboBox_AlreadyOpenCOM.ItemIndex],4,3);
      port := strtoint(SelectCom);
      if(port>255)then
      begin
        fComAdr:=CloseUSBPort(port);
      end
      else
      fComAdr := CloseSpecComPort(port) ;
      if fComAdr  = 0 then
      begin
        ComIsOpen:=False;
        ComboBox_AlreadyOpenCOM.DeleteSelected;
        if ComboBox_AlreadyOpenCOM.items.Count <> 0 then
          begin
            ComIsOpen:=True;
            port := strtoint(copy(ComboBox_AlreadyOpenCOM.items[0],4,2));
            CloseSpecComPort(port);
            fComAdr := $FF;
            opencomport(port,fComAdr,fBaud,frmcomportindex);
            fOpenComIndex := frmcomportindex;
            RefreshStatus;
            Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
          end;
      end
      else
      begin
        Application.MessageBox('通讯错误', '信息提示', MB_ICONINFORMATION);
        exit;
      end;
    end;
  finally

  end;

  if ComboBox_AlreadyOpenCOM.items.Count <> 0 then
    ComboBox_AlreadyOpenCOM.ItemIndex := 0
  else
  begin
    fOpenComIndex := -1;
    ComboBox_AlreadyOpenCOM.clear;
    ComboBox_AlreadyOpenCOM.Repaint;
  //  Button19.Enabled:=False;
    RefreshStatus;
  end;
end;
procedure TfrmUHFReader86main.AddCmdLog(cmd, cmdName: string; cmdRet: Byte; errorCode: LongInt = -1); //操作状态成功或错误提示函数
var
  s: string;
begin
  if cmdRet <> 0 then
  begin
    s := ' “' + cmdName + '” 指令返回=0x' + IntToHex(cmdRet, 2) + '(' + UHFReader86_GetReturnCodeDesc(cmdRet) + ')';
    if ErrorCode <> -1 then
    begin
        s := s + #13#10 + 'ErrorCode=0x' + IntToHex(ErrorCode, 2) + '(' + UHFReader86_GetErrorCodeDesc(ErrorCode) + ')';
      Application.MessageBox(pchar(s), '错误提示', MB_ICONINFORMATION);
    end;
  end;
  ferrorcode:=-1;
  if cmdRet = 0 then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + ' “' + cmdName + '” 执行成功'
  else
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + '' + s;
end;

procedure TfrmUHFReader86main.AddCmdLog2(cmd, cmdName: string; cmdRet: Byte; CMDReturn:string;errorCode: LongInt = -1); //操作状态成功或错误提示函数
var
  s: string;
begin
  if cmdRet <> 0 then
  begin
    s := ' “' + cmdName + '” 指令返回=0x' + IntToHex(cmdRet, 2) + '(' + CMDReturn + ')';
    if ErrorCode <> -1 then
    begin
        s := s + #13#10 + 'ErrorCode=0x' + IntToHex(ErrorCode, 2) + '(' + UHFReader86_GetErrorCodeDesc(ErrorCode) + ')';
      Application.MessageBox(pchar(s), '错误提示', MB_ICONINFORMATION);
    end;
  end;
  ferrorcode:=-1;
  if cmdRet = 0 then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + ' “' + cmdName + '” 执行成功'
  else
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + '' + s;
end;
procedure TfrmUHFReader86main.ClearLastInfo;
begin
  ComboBox_AlreadyOpenCOM.Repaint;
  RefreshStatus;
  Edit_Type.Text := '';
  Edit_Version.Text := '';
  ISO180006B.Checked:=False;
  EPCC1G2.Checked:=False;
  Edit_ComAdr.Text := '';
  Edit_power.Text := '';
  Edit_scantime.Text := '';
  Edit_dminfre.Text := '';
  Edit_dmaxfre.Text := '';
  PageControl1.TabIndex := 0;
end;
procedure TfrmUHFReader86main.Action_GetReaderInformationExecute(
  Sender: TObject);
function getNoStr(no: Integer; noLen: Integer): string;
  begin
    result := intToStr(no);
    while Length(result) < noLen do
      result := '0' + result;
  end;
var
  VersionInfo: array[0..2] of Char;
  ScanTime,dmaxfre,dminfre,powerdBm,FreBand,TrType,Ant,BeepEn,OutputRep,CheckAnt: Byte;
begin
  Edit_Version.Text := '';
  Edit_ComAdr.Text := '';
  Edit_ScanTime.Text := '';
  Edit_Type.text := '';
  ISO180006B.Checked:=False;
  EPCC1G2.Checked:=False;
  Edit_Power.text := '';
  Edit_dminfre.text := '';
  Edit_dmaxfre.text := '';
  fCmdRet:=GetReaderInformation(fComAdr,@VersionInfo,ReaderType,TrType, dmaxfre ,dminfre,powerdBm,
                                 ScanTime,Ant,BeepEn,OutputRep,CheckAnt,frmComPortindex);
 if(fCmdRet=0)then
 begin
  Edit_Version.Text := getnostr(Ord(versioninfo[0]),2)+'.'+getnostr(Ord(versioninfo[1]),2);
  Edit_ComAdr.Text := IntToHex(fComAdr,2);
  Edit_NewComAdr.Text := IntToHex(fComAdr,2);
  Edit_ScanTime.Text := inttostr(ScanTime)+'*100ms';
  ComboBox_scantime.ItemIndex:= scantime-3;

 FreBand:= ((dmaxfre and $c0)shr 4)or(dminfre shr 6) ;
 case FreBand of
 $01:begin
         RadioButton_band2.Checked:=True;
         fdminfre := 920.125+(dminfre and $3F)*0.25;
         fdmaxfre := 920.125+(dmaxfre and $3F)*0.25;

         ComboBox_dminfre.ItemIndex:=dminfre and $3F;
         ComboBox_dmaxfre.ItemIndex:=dmaxfre and $3F;
     end;
 $02:begin
         RadioButton_band3.Checked:=True;
         fdminfre := 902.75+(dminfre and $3F)*0.5;
         fdmaxfre := 902.75+(dmaxfre and $3F)*0.5;
         ComboBox_dminfre.ItemIndex:=dminfre and $3F;
         ComboBox_dmaxfre.ItemIndex:=dmaxfre and $3F;
     end;
 $03:begin
         RadioButton_band4.Checked:=True;
         fdminfre := 917.1+(dminfre and $3F)*0.2;
         fdmaxfre := 917.1+(dmaxfre and $3F)*0.2;
         ComboBox_dminfre.ItemIndex:=dminfre and $3F;
         ComboBox_dmaxfre.ItemIndex:=dmaxfre and $3F;
     end;
  $04:begin
         RadioButton_band5.Checked:=True;
         fdminfre := 865.1+(dminfre and $3F)*0.2;
         fdmaxfre := 865.1+(dmaxfre and $3F)*0.2;
         ComboBox_dminfre.ItemIndex:=dminfre and $3F;
         ComboBox_dmaxfre.ItemIndex:=dmaxfre and $3F;
     end;
 end;
  Edit_dminfre.Text := FloatToStr(fdminfre)+'MHz';
  Edit_dmaxfre.Text := FloatToStr(fdmaxfre)+'MHz';
  if fdmaxfre<>fdminfre then
  CheckBox_SameFre.Checked:=False
  else
  CheckBox_SameFre.Checked:=True;

  case ReaderType of
    $0F: begin
          Edit_Type.text := 'UHFReader86';
          Edit_power.Text   :=IntToStr(powerdBm);
         end;
    $10: begin
          Edit_Type.text := 'UHFReader86';
          Edit_power.Text   :=IntToStr(powerdBm);
         end;
  end;
  ReaderType_s:= ReaderType;
  ComboBox_PowerDbm.ItemIndex:=powerDbm;
  if (ord(TrType) and $02) = $02 then //第二个字节低第四位代表支持的协议“
  begin
  ISO180006B.Checked:=True;
  EPCC1G2.Checked:=True;
  end
  else
  begin
  ISO180006B.Checked:=False;
  EPCC1G2.Checked:=False;
  end;
  case BeepEn of
  1: Radio_beepEn.Checked:=True;
  0: Radio_beepDis.Checked:=True;
  end;

 end;
  AddCmdLog('GetReaderInformation','获取读写器信息', fCmdRet);
end;

procedure TfrmUHFReader86main.ComboBox_AlreadyOpenCOMCloseUp(Sender: TObject);
var
  SelectCom:string;
  port :byte;
begin
    if ComboBox_AlreadyOpenCOM.items.count <>0 then
    begin
      SelectCom := copy(ComboBox_AlreadyOpenCOM.Items[ComboBox_AlreadyOpenCOM.ItemIndex],4,3);
      port := strtoint(SelectCom);
      CloseSpecComPort(port);
      fComAdr := $FF;
      if opencomport(port,fComAdr,fBaud,frmcomportindex) <> 0 then
      begin
        Application.MessageBox('串口通讯错误', '信息提示',MB_ICONINFORMATION);
        exit;
      end;
      fOpenComIndex := frmcomportindex;
      ClearLastInfo;
      RefreshStatus;
      Action_GetReaderInformationExecute(Action_GetReaderInformation); //自动执行读取写卡器信息
    end;
end;

procedure TfrmUHFReader86main.Action_SetReaderInformationExecute(
  Sender: TObject);
var
  aNewComAdr,powerDbm,dminfre, dmaxfre ,scantime,band: Byte;
  returninfo:string;
  returninfoDlg:string;
  setinfo:string;
begin
  frmprogress.Show;
  frmUHFReader86main.Enabled:=False;
  band:=1;
  if(RadioButton_band2.Checked)then
  band:=1;
  if(RadioButton_band3.Checked)then
  band:=2;
  if(RadioButton_band4.Checked)then
  band:=3;
  if(RadioButton_band5.Checked)then
  band:=4;
  frmprogress.ProgressBar1.Position:=0;
  if Sender = Action_SetReaderInformation then
  begin
    dminfre := ((band and 3)shl 6)or (ComboBox_dminfre.ItemIndex and $3F) ;
    dmaxfre := ((band and $c)shl 4)or (ComboBox_dmaxfre.ItemIndex and $3F) ;
    aNewComAdr := StrToInt('$' + Edit_NewComAdr.Text);
    powerDbm:=ComboBox_PowerDbm.ItemIndex;
    fbaud:=ComboBox_baud.ItemIndex;
    if fbaud>2 then fbaud:=fbaud+2;
    scantime:= ComboBox_scantime.ItemIndex+3;
    setinfo:=' 写';
  end
  else
  begin  //
    dminfre := 64;
    dmaxfre := 19;
    aNewComAdr :=$00;
    powerDbm:=26;
    fbaud:=5;
    scantime:=10;   //
    setinfo:=' 恢复';
    ComboBox_baud.itemindex:=3;
   // RadioButton_band1.Checked:=True;
  end;
  frmprogress.ProgressBar1.StepBy(25);
  fCmdRet := SetAddress(fComAdr, aNewComAdr,frmcomportindex);
  if fCmdRet=ParameterSaveFailCanUseBeforeNoPower then
  fComAdr := aNewComAdr;
  if fCmdRet = 0 then
  begin
    fComAdr := aNewComAdr;
    returninfo:=returninfo+setinfo+'读写器地址成功';
  //  Action_GetReaderInformationExecute(Sender);
  end
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+setinfo+'读写器地址返回指令错误'
  else
  begin
  returninfo:=returninfo+setinfo+'读写器地址失败';
  returninfoDlg:=returninfoDlg+setinfo+'读写器地址失败指令返回0x='
       +inttostr(fCmdRet)+'('+UHFReader86_GetReturnCodeDesc(fCmdRet)+')';
  end;
  frmprogress.ProgressBar1.StepBy(25);
  fCmdRet := SetRfPower(fComAdr,powerDbm,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+setinfo+'功率成功'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+setinfo+'功率返回指令错误'
  else
  begin
  returninfo:=returninfo+setinfo+'功率失败';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'功率失败指令返回0x='
       +inttostr(fCmdRet)+'('+UHFReader86_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmprogress.ProgressBar1.StepBy(25);
  fCmdRet := SetRegion(fComAdr,dmaxfre,dminfre,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+setinfo+'频率成功'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+setinfo+'频率返回指令错误'
  else
  begin
  returninfo:=returninfo+setinfo+'频率失败';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'频率失败指令返回0x='
       +inttostr(fCmdRet)+'('+UHFReader86_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmprogress.ProgressBar1.StepBy(25);
  fCmdRet := SetBaudRate(fComAdr, fBaud,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+setinfo+'波特率成功'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+setinfo+'波特率返回指令错误'
  else
  begin
  returninfo:=returninfo+setinfo+'波特率失败';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'波特率失败指令返回0x='
       +inttostr(fCmdRet)+'('+UHFReader86_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmprogress.ProgressBar1.StepBy(25);
  fCmdRet := SetInventoryScanTime(fComAdr, scantime,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+setinfo+'询查时间成功'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+setinfo+'询查时间返回指令错误'
  else
  begin
  returninfo:=returninfo+setinfo+'询查时间失败';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'询查时间失败指令返回0x='
       +inttostr(fCmdRet)+'('+UHFReader86_GetReturnCodeDesc(fCmdRet)+')';
  end;

  Action_GetReaderInformationExecute(Sender);
  frmprogress.Close;
  frmUHFReader86main.Enabled:=True;
 // AddCmdLog('SetReaderInformation', TAction(Sender).Caption, fCmdRet);
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  returninfo;
  if  returninfoDlg<>'' then
  MessageDlg(returninfoDlg, mtInformation, [mbOK], 0);
end;

procedure TfrmUHFReader86main.RadioButton_band1Click(Sender: TObject);
var
  i:Integer;
begin
  CheckBox_SameFre.Checked:=False;
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
 for i:=0 to 62 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(902.6+i*0.4)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(902.6+i*0.4)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 62;
end;

procedure TfrmUHFReader86main.RadioButton_band2Click(Sender: TObject);
var
  i:Integer;
begin
  CheckBox_SameFre.Checked:=False;
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
 for i:=0 to 19 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(920.125+i*0.25)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(920.125+i*0.25)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 19;
end;

procedure TfrmUHFReader86main.RadioButton_band3Click(Sender: TObject);
var
  i:Integer;
begin
  CheckBox_SameFre.Checked:=False;
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
 for i:=0 to 49 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(902.75+i*0.5)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(902.75+i*0.5)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 49;
end;

procedure TfrmUHFReader86main.RadioButton_band4Click(Sender: TObject);
var
  i:Integer;
begin
  CheckBox_SameFre.Checked:=False;
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
 for i:=0 to 31 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(917.1+i*0.2)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(917.1+i*0.2)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex:=0;
  ComboBox_dmaxfre.ItemIndex:=31;
end;

procedure TfrmUHFReader86main.RadioButton_band5Click(Sender: TObject);
var
  i:Integer;
begin
  CheckBox_SameFre.Checked:=False;
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
 for i:=0 to 14 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(865.1+i*0.2)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(865.1+i*0.2)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex:=0;
  ComboBox_dmaxfre.ItemIndex:=14;
end;

procedure TfrmUHFReader86main.Action_GetReaderInformationUpdate(
  Sender: TObject);
begin
  Button3.Enabled:=ComIsOpen;
  Button5.Enabled:=ComIsOpen;
  Button1.Enabled:=ComIsOpen;

  Button_Beep.Enabled:=ComIsOpen;
  Button_SetGPIO.Enabled:=ComIsOpen;
  Button_GetGPIO.Enabled:=ComIsOpen;
  Button21.Enabled:=ComIsOpen ;
  Button8.Enabled:=ComIsOpen ;
  bt_getlen.Enabled:=ComIsOpen;
  bt_setlen.Enabled:=ComIsOpen;
end;

procedure TfrmUHFReader86main.Action_RfOutputExecute(Sender: TObject);
var
  onoff:Byte;
begin
  if sender = Action_RfOutput then
  onoff:=1
  else
  onoff:=0;
  fCmdRet := RfOutput(fComAdr, onoff,frmcomportindex);
  AddCmdLog('RfOutput', TAction(Sender).Caption, fCmdRet);
end;

function TfrmUHFReader86main.RoundClassic(R: Real): Int64;
begin
Result:= Trunc(R);
if Frac(R) >= 0.5 then
    Result:= Result + 1;
end;
procedure TfrmUHFReader86main.CheckBox_SameFreClick(Sender: TObject);
begin
    if CheckBox_SameFre.Checked then
    ComboBox_dmaxfre.ItemIndex:=ComboBox_dminfre.ItemIndex;
end;

procedure TfrmUHFReader86main.Edit2KeyPress(Sender: TObject; var Key: Char);
  var L:Boolean;
begin
    L:=(key<#8)or(key>#8)and(key<#48)or(key>#57)and (key<#65)or(key>#70)and (key<#97)or(key>#102);
    if l then key:=#0;
    if ( (key>#96)and(key<#103))   then  key:=  char(Ord(key)-32) ;
end;

procedure TfrmUHFReader86main.SpeedButton_QueryClick(Sender: TObject);
begin
  Target:=0;
  if(CheckBox_TID.Checked)then
  begin
    if(Length(Edit6.Text)<>2)or(Length(Edit11.Text)<>2)then
    begin
     StatusBar1.Panels[0].Text:='TID询查参数错误！';
     SpeedButton_Query.down:=False;
     Exit;
    end;
  end;
  if((Edit2.Text='')or(Edit3.Text=''))then
  begin
    StatusBar1.Panels[0].Text:='掩码地址或长度不能为空！';
    SpeedButton_Query.down:=False;
    Exit;
  end;
  if(CheckBox1.Checked)then
  begin
    if(Length(Edit1.Text)mod 2<>0)then
    begin
      StatusBar1.Panels[0].Text:='掩码数据错误！';
      SpeedButton_Query.down:=False;
      Exit;
    end;
  end;
  if not (SpeedButton_Query.down) then
  begin
    AddCmdLog('Inventory', '退出查询', 0);
    Timer_Test_.Enabled:=False;
    Edit6.Enabled:=true;
    Edit11.Enabled:=true;
    CheckBox_TID.Enabled:=True;
    Com_Q.Enabled:=True ;
    Com_S.Enabled:=True ;
  end
  else
  begin
    fInventory_EPC_List := ''; //先清除原来的缓冲
    ListView_EPC.Items.Clear;
    Timer_Test_.Enabled:=True;
    ListView_EPC.Clear;
    ComboBox_EPC1.Clear;
    ComboBox_EPC2.Clear;
    ComboBox_EPC3.Clear;
    ComboBox_EPC4.Clear;
    ComboBox_EPC5.Clear;
    ComboBox_EPC6.Clear;
     Edit6.Enabled:=False;
    Edit11.Enabled:=False;
    CheckBox_TID.Enabled:=False;
    Edit18.Text:='';
    Edit17.Text:='';
    Com_Q.Enabled:=False;
    Com_S.Enabled:=False;
  end;
end;

procedure TfrmUHFReader86main.Action_InventoryExecute(Sender: TObject);
procedure ChangeSubItem1(aListItem: TListItem; subItemIndex: Integer; ItemText: string;ant1,RSSI:string);
  begin
    //if aListItem.SubItems[subItemIndex] = ItemText then
    begin
      if(aListItem.SubItems[2]='')then
      begin
         aListItem.SubItems[2]:=ant1;
      end
      else
      begin
         aListItem.SubItems[2]:=Str_IntToBin(StrToInt('$'+BitStrToHextStr(aListItem.SubItems[2]))or StrToInt('$'+BitStrToHextStr(ant1)),4) ;
      //  aListItem.SubItems[2]:=IntToStr(StrToInt(aListItem.SubItems[2])or StrToInt(ant1));
      end;
      if (aListItem.SubItems[3]='99999') or (aListItem.SubItems[3]='')then              //aListItem.SubItems[2]为次数
       aListItem.SubItems[3]:='0'                        //aListItem.SubItems[0]为 EPC号
      else
      begin
       aListItem.SubItems[3]:= IntToStr(StrToInt(aListItem.SubItems[3])+1);
       aListItem.SubItems[4]:=RSSI;
       exit; //内容相同则不需要修改，可以不闪烁
      end;
    end;
    //aListItem.SubItems[subItemIndex] := ItemText;

  end;
  procedure ChangeSubItem2(aListItem: TListItem; subItemIndex: Integer; ItemText: string;ant1,RSSI:string);
  begin
   { if aListItem.SubItems[subItemIndex] = ItemText then         //aListItem.SubItems[1]为 EPC长度
    exit; //内容相同则不需要修改，可以不闪烁
    aListItem.SubItems[subItemIndex] := ItemText;  }
    aListItem.SubItems[1]:= IntToStr(Length(ItemText)div 2) ;
    aListItem.SubItems[2]:=ant1;
    aListItem.SubItems[3]:='1';
    aListItem.SubItems[4]:=RSSI;
    aListItem.SubItems[subItemIndex] := ItemText;
  end;
var
  CardNum:Integer;
  EPClen,m,Totallen:Integer;
  EPC: array[0..65535] of Char;
  isonstring:Boolean;
  isonlistview:Boolean;
  CardIndex: Integer;
  temps: string;
  s,ss, sEPC: string;
  aListItem: TListItem;
  temp1,temp2,temps2, temps3: string;
  i, j,n_index: integer;
  baifenbi:Real;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..800]of Char;
  MaskFlag:Byte;
  Ant,AdrTID,LenTID,TIDFlag:Byte;
  antstr,lastepc:string;
  line:string;
  RSSI,S1,s2,FileName:string;
  QValue,Session:Byte;
  m_ant:LongInt;
  queryFlag:Boolean;
  BufferFlag:Boolean;
begin
  fIsInventoryScan := true;
  Inant := $80;
  ScanTime:=ComboBox1.ItemIndex+3;
  FastFlag:=0;
  FillChar( MaskData,800,0);
  if(R_EPC.Checked)then MaskMem:=1;
  if(R_TID.Checked)then MaskMem:=2;
  if(R_User.Checked)then MaskMem:=3;
  getCharStr(Edit2.Text,MaskAdr);
  if(CheckBox1.Checked)then
  MaskFlag:=1
  else
  MaskFlag:=0;
  QValue:=Com_Q.ItemIndex;
  Session:=Com_S.ItemIndex;
  MaskLen:=StrToInt('$'+trim(edit3.Text));
  getCharStr(Edit1.Text,MaskData);
  if(CheckBox_TID.Checked)then
  begin
    AdrTID:=StrToInt('$'+Trim(Edit6.Text));
    LenTID:=StrToInt('$'+Trim(Edit11.Text));
    TIDFlag:=1;
  end
  else
  begin
    AdrTID:=0;
    LenTID:=0;
    TIDFlag:=0;
  end;
  try
     CardNum:=0;
     FastFlag:=1;
     if (Session = 0) or (Session=1) then
     begin
       Target:=0;
     end
     else
     begin
       if(AA_times > 1)then
       begin
         Target:=1- Target;
       end;
     end;
     fCmdRet :=Inventory_G2(fComAdr,QValue,Session,MaskMem,@MaskAdr,MaskLen,@MaskData,MaskFlag,AdrTID,LenTID,TIDFlag,Target,InAnt,Scantime,FastFlag,@EPC,Ant,Totallen,CardNum,frmcomportindex);
     AddCmdLog('Inventory', '查询标签', fCmdRet);
     Query_count:=Query_count+1;
     if(fCmdRet = $01)or (fCmdRet = $02)or (fCmdRet = $03)or (fCmdRet = $04)then //代表已查找结束，并且内容有发生变化
     begin
        if(CardNum=0)then
        begin
          AA_times:=AA_times+1;
        end
        else
        begin
          AA_times:=0;
        end;
        temps :=getStr(EPC,Totallen);
        m:=1;
        for CardIndex := 1 to CardNum do
        begin
          EPClen:=ord(tempS[m])+2;
          sEPC := copy(tempS,m,EPClen) ;
          m:=m+EPClen;
          if Length(sEPC) <> EPClen then Break;
          s := getHexStr(sEPC);
          RSSI:= IntToStr(StrToInt('$'+copy(s,Length(s)-1,2)));
          isonlistview:=False;
          s2:= copy(s, 3, Length(s)-4);
          for i:=1 to ListView_EPC.Items.Count do      //判断是否在Listview列表内
          begin
            if s2=(ListView_EPC.Items[i - 1]).SubItems[0] then
            begin
             aListItem := ListView_EPC.Items[i - 1];
             ChangeSubItem1(aListItem, 0, S2, Str_IntToBin(Ant,4),RSSI);
             isonlistview:=True;
             Break;
            end;
          end;
          if (not isonlistview) then
          begin
            aListItem := ListView_EPC.Items.Add;
            aListItem.Caption := IntToStr(aListItem.Index + 1);
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem := ListView_EPC.Items[ListView_EPC.Items.Count - 1];
            ChangeSubItem2(aListItem, 0, S2, Str_IntToBin(Ant,4),RSSI);
            if(not CheckBox_TID.Checked)then
            begin
            ComboBox_EPC1.Items.Add(S2);
            ComboBox_EPC2.Items.Add(S2);
            ComboBox_EPC3.Items.Add(S2);
            ComboBox_EPC4.Items.Add(S2);
            ComboBox_EPC5.Items.Add(S2);
            ComboBox_EPC6.Items.Add(S2);
            end;
          end;

          if(s<>'')then lastepc:=S2;
        end;
        if(ListView_EPC.Items.Count>0)then
        begin
          if ((Query_count > 1) or (Session = 0))then
          Edit18.Text:=IntToStr(ListView_EPC.Items.Count);
          Edit17.Text:= lastepc;
          ListView_EPC.ItemIndex := ListView_EPC.Items.Count -1;
          ListView_EPC.Selected.MakeVisible(False);
          if(not CheckBox_TID.Checked)then
          begin
          ComboBox_EPC1.Itemindex:=0;
          ComboBox_EPC2.Itemindex:=0;
          ComboBox_EPC3.Itemindex:=0;
          ComboBox_EPC4.Itemindex:=0;
          ComboBox_EPC5.Itemindex:=0;
          ComboBox_EPC6.Itemindex:=0;
          end;
        end;
        Application.ProcessMessages;
     end;

  finally

  end;
     fIsInventoryScan := False;
end;

procedure TfrmUHFReader86main.Timer_Test_Timer(Sender: TObject);
begin
 if fisinventoryscan then    Exit;
    Action_InventoryExecute(sender);
end;

procedure TfrmUHFReader86main.ComboBox_IntervalTimeChange(Sender: TObject);
begin
Timer_Test_.Interval :=(ComboBox_IntervalTime.ItemIndex+1)*10;
end;

procedure TfrmUHFReader86main.SpeedButton_Read_G2Click(Sender: TObject);
begin
 if SpeedButton_Read_G2.Down  then
    begin
      if Length(Edit_AccessCode2.Text)<8 then
      begin
        SpeedButton_Read_G2.Down:=False;
        MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
        Exit;
      end;
      if (Edit_WordPtr.Text='')or (Edit_Len.Text='')then
      begin
        SpeedButton_Read_G2.Down:=False;
        MessageDlg('起始地址或长度为空！请输入！', mtInformation, [mbOK], 0);
        Exit;
      end;
    Timer_G2_Read.Enabled:=True;
    end
    else
    begin
    Timer_G2_Read.Enabled:=False;
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “读数据”结束' ;
    end;
end;

procedure TfrmUHFReader86main.Timer_G2_ReadTimer(Sender: TObject);
var
    Mem,Num,WordPtr:Byte;
    ENum:byte;
    i: Integer;
    s2: string;
    CardData: array[0..320] of Char;
     MaskMem:Byte;
    MaskAdr:array[0..2]of Char;
    MaskLen:Byte;
    MaskData:array[0..80]of Char;
begin
  FillChar( MaskData,80,0);
  if  fTimer_G2_Read then    exit;
  fTimer_G2_Read:=true;
  try
    if SpeedButton_Read_G2.Down  then
    begin
      if(R_EPC.Checked)then MaskMem:=1;
      if(R_TID.Checked)then MaskMem:=2;
      if(R_User.Checked)then MaskMem:=3;

      if(CheckBox1.Checked)then
      begin
      ENum:=255;
      if(Edit2.Text='')then Exit;
      if(Edit3.Text='')then Exit;
      if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
      getCharStr(Edit2.Text,MaskAdr);
      MaskLen:=StrToInt('$'+trim(edit3.Text));
      getCharStr(Edit1.Text,MaskData);
      END
      else
       ENum:=Length(ComboBox_EPC2.text) div 4;

      getCharStr(ComboBox_EPC2.text,fOperEPC);
      getCharStr(Edit_AccessCode2.text,fPassword);
      WordPtr:=StrToInt('$'+Edit_WordPtr.Text);
      Num:=StrToInt(Edit_Len.Text);
      if  C_Reserve.Checked then
        Mem:=0
      else if  C_EPC.Checked then
        Mem:=1
      else if  C_TID.Checked then
        Mem:=2
      else if  C_User.Checked then
        Mem:=3;
      fCmdRet:=ReadData_G2(fComAdr,@fOperEPC,ENum,Mem,WordPtr,Num,@fPassword,MaskMem,@MaskAdr,MaskLen,MaskData,@CardData,ferrorcode,frmComPortindex);
      if fCmdRet=0 then
      begin
        for i := 0 to Num*2 - 1 do
        s2 := s2 + IntToHex(ord(CardData[i]), 2);
        Memo_DataShow.Lines.Add(s2);
      end;
      if  fErrorCode<>-1 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +
       ' “读数据”返回错误代码=0x'+ IntToHex(fErrorCode, 2) +
       '(' + UHFReader86_GetErrorCodeDesc(fErrorCode) + ')';
        ferrorcode:=-1;
      end
      else      
      AddCmdLog('ReadData','读数据', fCmdRet);
      if not (SpeedButton_Read_G2.Down)  then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “读数据”结束' ;
    end;
  finally
  fTimer_G2_Read:=false;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader86main.Action_ShowOrChangeDataExecuteExecute(
  Sender: TObject);
var
    Mem,Num,WordPtr:Byte;
    Writedata:array[0..320] of Char;
    WNum:Byte;
    ENum:Byte;
    EPClength:byte;
    i: Integer;
    s,s2: string;
    CardData: array[0..320] of Char;
    WrittenDataNum:LongInt;
    MaskMem:Byte;
    MaskAdr:array[0..2]of Char;
    MaskLen:Byte;
    MaskData:array[0..80]of Char;
begin
    FillChar( MaskData,80,0);
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3 ;
    if(CheckBox1.Checked)then
    begin
      ENum:=255;
      if(Edit2.Text='')then Exit;
      if(Edit3.Text='')then Exit;
      if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
      getCharStr(Edit2.Text,MaskAdr);
      MaskLen:=StrToInt('$'+trim(edit3.Text));
      getCharStr(Edit1.Text,MaskData);
    end
    else
     ENum:=Length(ComboBox_EPC2.text) div 4;
    if Length(Edit_AccessCode2.Text)<8 then
    begin
      MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
      Exit;
    end;
    if (Edit_WordPtr.Text='')or(Edit_Len.Text='')then
    begin
      MessageDlg('起始地址或长度为空！请输入！', mtInformation, [mbOK], 0);
      Exit;
    end;
    getCharStr(ComboBox_EPC2.text,fOperEPC);
   // getCharStr('DA7DE000',fOperEPC);
    getCharStr(Edit_AccessCode2.text,fPassword);
    WordPtr:=StrToInt('$'+Edit_WordPtr.Text);
    Num:=StrToInt(Edit_Len.Text);
    if  C_Reserve.Checked then
      Mem:=0
    else if  C_EPC.Checked then
      Mem:=1
    else if  C_TID.Checked then
      Mem:=2
    else if  C_User.Checked then
      Mem:=3;
    if Sender=Action_ShowOrChangeData_write then
    begin
      if (Edit_WriteData.Text='' )or (Length(Edit_WriteData.Text)mod 4<>0) then
      begin
      MessageDlg('请输入以字为单位的16进制数！'+#13+#10+'例如：1234、12345678', mtInformation, [mbOK], 0);
      Exit;      //
      end;
      WNum:= Length(Edit_WriteData.text)div 4 ;
      getCharStr(Edit_WriteData.text,Writedata);
      if(CheckBox18.Checked)and(C_EPC.Checked)then
      begin
       WordPtr:=1;
       WNum:= Length(Edit_WriteData.text)div 4 +1;
       getCharStr(edit_pc.Text+Edit_WriteData.text,Writedata);
      end;
      fCmdRet:=WriteData_G2(fComAdr,@fOperEPC,WNum,ENum,Mem,WordPtr,@Writedata,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
      AddCmdLog('WriteData','写数据', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “写数据”指令返回=0x00' +
                  '(数据完全写入成功)';
      end;
    end;
     if Sender=Action_ShowOrChangeData_BlockWrite then
    begin
      if ( Edit_WriteData.Text='' )or (Length(Edit_WriteData.Text)mod 4<>0) then
      begin
      MessageDlg('请输入以字为单位的16进制数！'+#13+#10+'例如：1234、12345678', mtInformation, [mbOK], 0);
      Exit;
      end;
      WNum:= Length(Edit_WriteData.text)div 4 ;
      getCharStr(Edit_WriteData.text,Writedata);
      if(CheckBox18.Checked)and(C_EPC.Checked)then
      begin
       WordPtr:=1;
       WNum:= Length(Edit_WriteData.text)div 4 +1;
       getCharStr(edit_pc.Text+Edit_WriteData.text,Writedata);
      end;
      fCmdRet:=BlockWrite_G2(fComAdr,@fOperEPC,WNum,ENum,Mem,WordPtr,@Writedata,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
      AddCmdLog('BlockWrite','写数据', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “写数据”指令返回=0x00' +
                  '(数据完全写入成功)';
      end;
    end;
    if Sender=Action_ShowOrChangeData_BlockErase then
    begin
      if Length(Edit_AccessCode2.Text)<8 then
      begin
        MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
        Exit;
      end;
      if (Edit_WordPtr.Text='')or (Edit_Len.Text='')then
      begin
        SpeedButton_Read_G2.Down:=False;
        MessageDlg('起始地址或块擦除长度为空！请输入！', mtInformation, [mbOK], 0);
        Exit;
      end;
      if (strtoint(Edit_WordPtr.Text)<1)and C_EPC.checked then
      begin
        MessageDlg('擦除EPC区的起始地址长度必须大于等于0x01！请重新输入！', mtInformation, [mbOK], 0);
        Exit;
      end;
      fCmdRet:=BlockErase_G2(fComAdr,@fOperEPC,ENum,Mem,WordPtr,Num,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
      AddCmdLog('BlockErase', '擦除数据', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “擦除数据”指令返回=0x00' +
                '(擦除数据成功)';
      end;
    end;
end;

procedure TfrmUHFReader86main.Action_SetProtectStateExecute(Sender: TObject);
var
  select:byte;
  setprotect:Byte;
  return:Integer;
  ENum:Byte;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..80]of Char;
begin
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3;
    FillChar( MaskData,80,0);
    if(CheckBox1.Checked)then
    begin
    ENum:=255;
     if(Edit2.Text='')then Exit;
    if(Edit3.Text='')then Exit;
    if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
     MaskLen:=StrToInt('$'+trim(edit3.Text));
    getCharStr(Edit1.Text,MaskData);
    getCharStr(Edit2.Text,MaskAdr);
    end
    else
    ENum:=Length(ComboBox_EPC1.text) div 4;

    getCharStr(ComboBox_EPC1.text,fOperEPC);
    getCharStr(Edit_AccessCode1.text,fPassword);
    if P_Reserve.Checked and DestroyCode.Checked  then
     select:=$00
    else if P_Reserve.Checked and AccessCode.Checked then
     select:=$01
    else if P_EPC.Checked then
     select:=$02
    else if P_TID.Checked then
     select:=$03
    else if P_User.Checked then
     select:=$04;
    if P_Reserve.Checked then
    begin
      if NoProect.Checked then
       setprotect:=$00
      else if Proect.Checked then
       setprotect:=$02
      else if Always.Checked then
      begin
       setprotect:=$01;
       return:=MessageDlg('确定要设置为永远可读可写吗？', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end
      else if AlwaysNot.Checked then
      begin
       setprotect:=$03;
       return:=MessageDlg('确定要设置为永远不可读不可写吗？', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end;
    end
    else
    begin
      if NoProect2.Checked then
       setprotect:=$00
      else if Proect2.Checked then
       setprotect:=$02
      else if Always2.Checked then
      begin
       setprotect:=$01;
       return:=MessageDlg('确定要设置为永远可写吗？', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end
      else if AlwaysNot2.Checked then
      begin
       setprotect:=$03;
       return:=MessageDlg('确定要设置为永远不可写吗？', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end;
    end;
    if Length(Edit_AccessCode1.Text)<8 then
    begin
      MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
      Exit;
    end;
    fCmdRet:=Lock_G2(fComAdr,@fOperEPC,ENum,select,setprotect,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);  ;
    AddCmdLog('Lock', '设置保护', fCmdRet,ferrorcode);
end;

procedure TfrmUHFReader86main.Action_SetProtectStateUpdate(Sender: TObject);
var
  CanEnabled:Boolean;
  CanEnabled2:Boolean;
begin
   SpeedButton_Query .Enabled:=ComIsOpen and (not (SpeedButton_CheckAlarm_G2.Down) )
                                 and (not (SpeedButton_Read_G2.Down) ) ;
//    SpeedButton_detect.Enabled:=ComIsOpen and (not (SpeedButton_CheckAlarm_G2.Down));

    CanEnabled:=not (SpeedButton_Query.down) and  ComIsOpen and (ListView_EPC.Items.Count<>0)
                and (not (SpeedButton_CheckAlarm_G2.Down))and (not (SpeedButton_Read_G2.Down) );
    CanEnabled2:=not (SpeedButton_Query.down) and  ComIsOpen
                and (not (SpeedButton_CheckAlarm_G2.Down))and (not (SpeedButton_Read_G2.Down) );
    ComboBox_IntervalTime.Enabled:= CanEnabled2;

    AccessCode.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    DestroyCode.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    NoProect.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    Proect.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    Always.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    AlwaysNot.Enabled:=CanEnabled and (P_Reserve.Checked) ;

    NoProect2.Enabled:=not (P_Reserve.Checked)and CanEnabled;
    Proect2.Enabled:=not (P_Reserve.Checked)and CanEnabled;
    Always2.Enabled:=not (P_Reserve.Checked)and CanEnabled;
    AlwaysNot2.Enabled:=not (P_Reserve.Checked)and CanEnabled;

    GroupBox5.Enabled:=CanEnabled;
    Label24.Enabled:=CanEnabled;
    ComboBox_EPC1.Enabled:=CanEnabled;
    GroupBox18.Enabled:=CanEnabled;

    Edit_AccessCode1.Enabled:=CanEnabled;
    GroupBox1.Enabled:=CanEnabled;
    P_Reserve.Enabled:=CanEnabled;
    P_EPC.Enabled:=CanEnabled;
    P_TID.Enabled:=CanEnabled;
    P_User.Enabled:=CanEnabled;
    GroupBox9.Enabled:=CanEnabled;
    Label33.Enabled:=CanEnabled;
    Edit_DestroyCode.Enabled:=CanEnabled;
    ComboBox_EPC3.Enabled:=CanEnabled;

    GroupBox10.Enabled:=not (SpeedButton_Query.down) and  ComIsOpen and (ListView_EPC.Items.Count<>0)
                        and (not (SpeedButton_CheckAlarm_G2.Down));
    SpeedButton_Read_G2.Enabled:=GroupBox10.Enabled ;
    Memo_DataShow.Enabled:=GroupBox10.Enabled ;
    Button16.Enabled:=GroupBox10.Enabled ;
    
    Label9.Enabled:=CanEnabled;
    Label18.Enabled:=CanEnabled;
    Label19.Enabled:=CanEnabled;
    Label20.Enabled:=CanEnabled;
    ComboBox_EPC2.Enabled:=CanEnabled;
    Edit_AccessCode2.Enabled:=CanEnabled;
    Edit_WriteData.Enabled:=CanEnabled;
    Edit_WordPtr.Enabled:=CanEnabled;
    Edit_Len.Enabled:=CanEnabled;

    GroupBox6.Enabled:=CanEnabled;
    C_Reserve.Enabled:=CanEnabled;
    C_EPC.Enabled:=CanEnabled;
    C_TID.Enabled:=CanEnabled;
    C_User.Enabled:=CanEnabled;
    Button_SetProtectState.Enabled:=CanEnabled;
//    Button_DataRead.Enabled:=CanEnabled;

    Button_DataWrite.Enabled:=CanEnabled ;
    Button_BlockErase.Enabled:=CanEnabled;
    Button_BlockWrite.Enabled:=CanEnabled;
    Button_DestroyCard.Enabled:=CanEnabled;
   if CheckBox1.Checked and (not SpeedButton_Read_G2.Down) then
    begin
      Edit2.Enabled:=True;
      Edit3.Enabled:=True;
      Edit1.Enabled:=True;
      R_EPC.Enabled:=True;
      R_TID.Enabled:=True;
      R_User.Enabled:=True;
    end
    else
    begin
      Edit2.Enabled:=False ;
      Edit3.Enabled:=False;
      Edit1.Enabled:=False;
      R_EPC.Enabled:=False;
      R_TID.Enabled:=False;
      R_User.Enabled:=False;
    end;

    GroupBox23.Enabled:=CanEnabled2;
    Label38.Enabled:=CanEnabled2;
    Label39.Enabled:=CanEnabled2;
    Edit_AccessCode3.Enabled:=CanEnabled2;
    Button_WriteEPC_G2.Enabled:=CanEnabled2;
    Edit_WriteEPC.Enabled:=CanEnabled2;

    ComboBox_EPC4.Enabled:=CanEnabled;
    Button_SetReadProtect_G2.Enabled:=CanEnabled;

    GroupBox20.Enabled:=CanEnabled2;
    Label32.Enabled:=CanEnabled2;
    Edit_AccessCode4.Enabled:=CanEnabled2;
    Button_SetMultiReadProtect_G2.Enabled:=CanEnabled2;
    Button_RemoveReadProtect_G2.Enabled:=CanEnabled2;
    Button_CheckReadProtected_G2.Enabled:=CanEnabled2;
    ExtRead.Enabled:= CanEnabled;
    ExtWrite.Enabled:=CanEnabled;
    Label35 .Enabled:=CanEnabled;
    Button_SetEASAlarm_G2.Enabled:=CanEnabled;
    ComboBox_EPC5.Enabled:=CanEnabled;
    Edit_AccessCode5.Enabled:=CanEnabled;
    GroupBox24 .Enabled:=CanEnabled;
    Alarm_G2 .Enabled:=CanEnabled;
    NoAlarm_G2.Enabled:=CanEnabled;

    GroupBox21.Enabled:=not (SpeedButton_Query.down) and  ComIsOpen
                        and(not (SpeedButton_Read_G2.Down) ) ;

    SpeedButton_CheckAlarm_G2.Enabled:=GroupBox21.Enabled;

    GroupBox22.Enabled:=CanEnabled;
    Label36   .Enabled:=CanEnabled;
    Label37   .Enabled:=CanEnabled;
    Button_LockUserBlock_G2.Enabled:=CanEnabled;
    ComboBox_BlockNum.Enabled:=CanEnabled;
    ComboBox_EPC6 .Enabled:=CanEnabled;
    Edit_AccessCode6.Enabled:=CanEnabled;
end;

procedure TfrmUHFReader86main.Action_DestroyCardExecute(Sender: TObject);
var
  return:Integer;
  ENum:byte;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..80]of Char;
begin
    if(Edit2.Text='')then Exit;
    if(Edit3.Text='')then Exit;
    if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3;
    FillChar( MaskData,80,0);
    getCharStr(Edit2.Text,MaskAdr);
    if(CheckBox1.Checked)then
    ENum:=255
    else
    ENum:=Length(ComboBox_EPC3.text) div 4;
    MaskLen:=StrToInt('$'+trim(edit3.Text));
    getCharStr(Edit1.Text,MaskData);
  return:=MessageDlg('确定要销毁这张标签吗？', mtInformation, [mbOK, mbCancel], 0);
  if return = IDok then
  begin
    if Length(Edit_DestroyCode.Text)<8 then
    begin
      MessageDlg('销毁密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
      Exit;
    end;
    getCharStr(ComboBox_EPC3.text,fOperEPC);
    getCharStr(Edit_DestroyCode.text,fPassword);
   fCmdRet:=KillTag_G2(fComAdr,@fOperEPC,ENum,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
    AddCmdLog('KillTag', '销毁标签', fCmdRet,ferrorcode);
    if fCmdRet=0 then
    begin
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “销毁标签”指令返回=0x00' +
              '(销毁成功)'
    end;
  end;
end;

procedure TfrmUHFReader86main.Action_WriteEPC_G2Execute(Sender: TObject);
var
  WriteEPC:array[0..100] of Char;
  ENum:byte;
begin
  if Length(Edit_AccessCode3.Text)<8 then
  begin
    MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
  if (Length(Edit_WriteEPC.Text)mod 4<>0) then
  begin
  MessageDlg('请输入以字为单位的16进制数！'+#13+#10+'例如：1234、12345678', mtInformation, [mbOK], 0);
  Exit;
  end;
   ENum:=Length(Edit_WriteEPC.text) div 4;
  getCharStr(Edit_WriteEPC.text,WriteEPC);
  getCharStr(Edit_AccessCode3.text,fPassword);
  fCmdRet:=WriteEPC_G2(fComAdr,@fPassword,@WriteEPC,ENum,ferrorcode,frmComPortindex);
  AddCmdLog('WriteEPC_G2', '写EPC', fCmdRet,ferrorcode);
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “写EPC”指令返回=0x00' +
            '(写EPC成功)'
  end;
end;

procedure TfrmUHFReader86main.Action_SetReadProtect_G2Execute(Sender: TObject);
var
  ENum:byte;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..80]of Char;
begin
    if(Edit2.Text='')then Exit;
    if(Edit3.Text='')then Exit;
    if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3;
    FillChar( MaskData,80,0);
    getCharStr(Edit2.Text,MaskAdr);
     MaskLen:=StrToInt('$'+trim(edit3.Text));
      getCharStr(Edit1.Text,MaskData);
  if Length(Edit_AccessCode4.Text)<8 then
  begin
    MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
   if(CheckBox1.Checked)then
    ENum:=255
   else
   ENum:=Length(ComboBox_EPC4.text)div 4;
  getCharStr(ComboBox_EPC4.text,fOperEPC);
  getCharStr(Edit_AccessCode4.text,fPassword);
  fCmdRet:=SetPrivacyByEPC_G2(fComAdr,@fOperEPC,ENum,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
  AddCmdLog('SetPrivacyByEPC', '设置读保护', fCmdRet,ferrorcode);
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “设置读保护”指令返回=0x00' +
            '(设置读保护成功)'
  end;
end;

procedure TfrmUHFReader86main.Action_SetMultiReadProtect_G2Execute(
  Sender: TObject);
begin
  if Length(Edit_AccessCode4.Text)<8 then
  begin
    MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
  getCharStr(Edit_AccessCode4.text,fPassword);
  fCmdRet:=SetPrivacyWithoutEPC_G2(fComAdr,@fPassword,ferrorcode,frmComPortindex);
  AddCmdLog('SetPrivacyWithoutEPC', '设置多张读保护', fCmdRet,ferrorcode);
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “设置多张读保护”指令返回=0x00' +
            '(设置多张读保护成功)'
  end;
end;

procedure TfrmUHFReader86main.Action_RemoveReadProtect_G2Execute(
  Sender: TObject);
begin
  if Length(Edit_AccessCode4.Text)<8 then
  begin
    MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
  getCharStr(Edit_AccessCode4.text,fPassword);
  fCmdRet:=ResetPrivacy_G2(fComAdr,@fPassword,ferrorcode,frmComPortindex);
  AddCmdLog('ResetPrivacy', '解锁读保护', fCmdRet,ferrorcode );
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “解锁读保护”指令返回=0x00' +
            '(解锁读保护成功)'
  end;
end;

procedure TfrmUHFReader86main.Action_CheckReadProtected_G2Execute(
  Sender: TObject);
var
  readpro:Byte;
begin
  fCmdRet:=CheckPrivacy_G2(fComAdr,readpro,ferrorcode,frmComPortindex);
  AddCmdLog('CheckPrivacy', '检测读保护', fCmdRet);
  if fCmdRet=0 then
  begin
   if readpro=0 then
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测读保护”指令返回=0x00' +
            '(电子标签没有被设置为读保护)';
   if readpro=1 then
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测读保护”指令返回=0x01' +
            '(电子标签被设置读保护锁定)';
  end ;
end;

procedure TfrmUHFReader86main.Action_SetEASAlarm_G2Execute(Sender: TObject);
var
  ENum:byte;
  EAS:Byte;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..80]of Char;
begin
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3;
    FillChar( MaskData,80,0);
  if Length(Edit_AccessCode5.Text)<8 then
  begin
    MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
   if(CheckBox1.Checked)then
   begin
    ENum:=255;
     if(Edit2.Text='')then Exit;
      if(Edit3.Text='')then Exit;
      if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
      getCharStr(Edit2.Text,MaskAdr);
        MaskLen:=StrToInt('$'+trim(edit3.Text));
        getCharStr(Edit1.Text,MaskData);
    end
   else
    ENum:=Length(ComboBox_EPC5.text) div 4;
  getCharStr(ComboBox_EPC5.text,fOperEPC);
  getCharStr(Edit_AccessCode5.text,fPassword);
  if Alarm_G2.checked then EAS:= $01
  else EAS:=$00;
  fCmdRet:=EASConfigure_G2(fComAdr,@fOperEPC,ENum,@fPassword,EAS,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
  AddCmdLog('EASConfigure', '报警设置', fCmdRet,ferrorcode);   //v2.1改
  if fCmdRet=0 then
  begin
  if Alarm_G2.checked then                                 //v2.1增加
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “报警设置”指令返回=0x00' +
            '(设置EAS报警成功)'
  else
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “报警设置”指令返回=0x00' +
            '(清除EAS报警成功)'
      
  end;
end;

procedure TfrmUHFReader86main.SpeedButton_CheckAlarm_G2Click(Sender: TObject);
begin
  if SpeedButton_CheckAlarm_G2.Down  then
  begin
    Timer_G2_Alarm.Enabled:=True;
  end
  else
  begin
    Timer_G2_Alarm.Enabled:=False;
    Label_Alarm.Visible:=False;                       //v2.1增加
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测EAS报警”结束' ;
  end;
end;

procedure TfrmUHFReader86main.Timer_G2_AlarmTimer(Sender: TObject);
var
  ENum:byte;
begin
  if  fTimer_G2_Alarm then    exit;
  fTimer_G2_Alarm:=true;
  try
    if SpeedButton_CheckAlarm_G2.Down  then
    begin
      fCmdRet:=EASAlarm_G2(fComAdr,ferrorcode,frmComPortindex);
      if fCmdRet=0 then
      begin
         StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测EAS报警”指令返回=0x00' +
                  '(检测到EAS报警)';
         Label_Alarm.Visible:=True;                       //v2.1增加
      end
      else
      begin
        Label_Alarm.Visible:=False;                       //v2.1增加
        AddCmdLog('EASAlarm', '检测EAS报警', fCmdRet);
      end;
      if not(SpeedButton_CheckAlarm_G2.Down)then
      begin
        Label_Alarm.Visible:=False;                       //v2.1增加
        StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测EAS报警”结束' ;
      end;
    end;
  finally
    fTimer_G2_Alarm:=false;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader86main.Action_LockUserBlock_G2Execute(Sender: TObject);
var
  ENum:byte;
  BlockNum:Byte;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..80]of Char;
begin
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3;
    FillChar( MaskData,80,0);
      if Length(Edit_AccessCode6.Text)<8 then
      begin
        MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
        Exit;
      end;
      if(CheckBox1.Checked)then
      begin
        ENum:=255 ;
        if(Edit2.Text='')then Exit;
        if(Edit3.Text='')then Exit;
        if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
        getCharStr(Edit2.Text,MaskAdr);
        MaskLen:=StrToInt('$'+trim(edit3.Text));
        getCharStr(Edit1.Text,MaskData);
      end
      else
      ENum:=Length(ComboBox_EPC6.text) div 4;
      getCharStr(ComboBox_EPC6.text,fOperEPC);
      getCharStr(Edit_AccessCode6.text,fPassword);
      BlockNum:=ComboBox_BlockNum.itemindex*2 ;
      fCmdRet:=BlockLock_G2(fComAdr,@fOperEPC,ENum,@fPassword,BlockNum,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
      AddCmdLog('BlockLock', '用户区数据块锁定', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “用户区数据块锁定”指令返回=0x00' +
                '(锁定成功)'
      end
end;

procedure TfrmUHFReader86main.PageControl1Change(Sender: TObject);
begin
 if (PageControl1.ActivePage <> TabSheet_EPCC1G2) then
    begin
      Timer_Test_.Enabled := False;
      SpeedButton_Query.Down:=False;
  //  SpeedButton_detect.Down:=False;
      SpeedButton_CheckAlarm_G2.Down:=False;
      SpeedButton_Read_G2.Down:=False;
      Timer_G2_Alarm.Enabled:=False;
      Timer_G2_Read.Enabled:=False;
      SpeedButton_Write_6B.Down:=False;
      SpeedButton_Read_6B.Down:=False;
    end;
     if (PageControl1.ActivePage <> TabSheet_6B) then
    begin
      Timer_Test_6B.Enabled := False;
      SpeedButton_Query_6B.Down:=False;
    end;
    if (PageControl1.ActivePage <> TabSheet3) then
    begin
      breakflag:=True;
      Button21.Enabled:=ComIsOpen;
      Button23.Enabled:=False;
    end
    else
    begin
       breakflag:=False;
    end;
    if (PageControl1.ActivePage <> TabSheet2)then
    begin
      Timer1.Enabled:=False;
      btStartBuffer.Caption:='开始查询';
    end;
    btStartBuffer.Enabled:=ComIsOpen;
    btGetBuffer.Enabled:=ComIsOpen;
    btClearBuffer.Enabled:=ComIsOpen;
    btGetAndClBuffer.Enabled:=ComIsOpen;
    btGetBufferNum.Enabled:=ComIsOpen;
 {  if (PageControl1.ActivePage = TabSheet5) then
  begin
    Button30Click(Sender);
    sleep(200);
    if(SeriaATflag=True)then Exit;
    Button9Click(Sender);
    sleep(100);
    if(SeriaATflag=True)then Exit;
    Button26Click(Sender);
    sleep(100);
    if(SeriaATflag=True)then Exit;
    Button28Click(Sender);
  end; }
end;

procedure TfrmUHFReader86main.Button_BeepClick(Sender: TObject);
var
  BeepEn:byte;
begin
 if(Radio_beepEn.Checked)then
  BeepEn:=1
  else
  BeepEn:=0;
 fCmdRet:=SetBeepNotification(fComAdr,BeepEn,frmComPortindex);
 AddCmdLog('SetBeepNotification', '设置', fCmdRet);
end;

procedure TfrmUHFReader86main.Edit8KeyPress(Sender: TObject; var Key: Char);
  var L:Boolean;
begin
   L:=(key<#8)or(key>#8)and(key<#48)or(key>#57) ;
    if l then key:=#0;
end;
function TfrmUHFReader86main.getNoStr(no: Integer; noLen: Integer): string;
begin
  result := intToStr(no);
  while Length(result) < noLen do
    result := '0' + result;
end;
procedure TfrmUHFReader86main.Button_clearBufferClick(Sender: TObject);
begin
fCmdRet:=ClearTagBuffer(fcomadr,frmcomportindex);
AddCmdLog('ClearTagBuffer', '清缓存', fCmdRet);
end;

procedure TfrmUHFReader86main.Button_SetGPIOClick(Sender: TObject);
var
  OutputPin:Byte;
begin
  OutputPin:=0;
  if(CheckBox2.Checked)then
  OutputPin:=OutputPin or $01;
  if(CheckBox3.Checked)then
  OutputPin:=OutputPin or $02;

  fCmdRet:=SetGPIO(fcomadr,OutputPin,frmcomportindex);
  AddCmdLog('SetGPIO', '设置', fCmdRet);
end;

procedure TfrmUHFReader86main.Button_GetGPIOClick(Sender: TObject);
var
  OutputPin:Byte;
begin
  OutputPin:=0;
  fCmdRet:=GetGPIOStatus(fcomadr,OutputPin,frmcomportindex);
  if(fCmdRet=0)then
  begin
   if(OutputPin and $01)=$01then
   CheckBox4.Checked:=True
   else
   CheckBox4.Checked:=False;
   if(OutputPin and $02)=$02then
   CheckBox5.Checked:=True
   else
   CheckBox5.Checked:=False;

   if(OutputPin and $10)=$10then
   CheckBox2.Checked:=True
   else
   CheckBox2.Checked:=False;
   if(OutputPin and $20)=$20then
   CheckBox3.Checked:=True
   else
   CheckBox3.Checked:=False;

  end;
  AddCmdLog('GetGPIO', '获取', fCmdRet);
end;

Function TfrmUHFReader86main.Str_IntToBin(Int: LongInt; Size: Integer): String;
Var
  i: Integer;
Begin
  Result:='';
  If Size < 1 Then Exit;
  For i := Size Downto 1 Do
    Begin
      If Int And (1 Shl (Size - i)) <> 0 Then
        Result := '1' + Result
      Else
        Result := '0' + Result;
    End;
End;
function TfrmUHFReader86main.BitStrToHextStr(const BitStr: String): String;
var
  vD : Byte;
  I : Integer;
  vHextStr : String;
  vP : PChar;
  vLen : Integer;
begin
  vLen := Length(BitStr);
  if vLen mod 4 > 0 then
  begin
      SetLength(vHextStr,   vLen   div   4   +   1);
      vLen := vlen div 4 + 1;
  end
  else
  begin
      SetLength(vHextStr,   vLen   div   4);
      vLen := vlen div 4 ;
  end;
  //初始化
  vD := 0;
  vP := PChar(BitStr)+length(BitStr)-1;
  I := 0;   //开始计数
  while vP^ <> #0 do
  begin
      if vp^ = '1' then
      begin
        case i of
          0:    vD :=vd+1;
          1:    vD :=vd+2;
          2:    vD :=vd+4;
          3:    vD :=vd+8;
        end;
      end;
      Dec(vP);
      Inc(I);
      if I = 4 then
      begin
        case vD of
          0..9 : vHextStr[vLen] := Chr(vD + $30);
          10..15 : vHextStr[vLen] := Chr(vD - 10 + $41);
        end;
        Dec(vLen);
        I :=   0;
        vD :=   0;
      end;
  end;
  if I > 0then
  begin
      case   vD   of
        0..9 : vHextStr[vLen] := Chr(vD + $30);
        10..15 : vHextStr[vLen] := Chr(vD + $41);
      end;
  end;
  Result := vHextStr;
end;
procedure TfrmUHFReader86main.ComboBox_dminfreSelect(Sender: TObject);
begin
 if CheckBox_SameFre.Checked then
  begin
    if TComboBox(Sender).Tag=1 then
    ComboBox_dminfre.ItemIndex:=ComboBox_dmaxfre.ItemIndex
    else
    ComboBox_dmaxfre.ItemIndex:=ComboBox_dminfre.ItemIndex;
  end
  else if  ComboBox_dminfre.ItemIndex> ComboBox_dmaxfre.ItemIndex  then
  begin
    if TComboBox(Sender).Tag=0 then
    ComboBox_dminfre.ItemIndex:=ComboBox_dmaxfre.ItemIndex
    else
    ComboBox_dmaxfre.ItemIndex:=ComboBox_dminfre.ItemIndex;
    Application.MessageBox('最低频率应小于或等于最高频率', '错误提示', MB_ICONINFORMATION);
  end;
end;

procedure TfrmUHFReader86main.Button16Click(Sender: TObject);
begin
 Memo_DataShow.Lines.Clear;
end;

procedure TfrmUHFReader86main.Button21Click(Sender: TObject);
var
  dminfre, dmaxfre,Ffenpin:Byte;
  i,j,ncount:Integer;
  CardNum:Integer;
  Totallen,UID_index,n_index:Integer;
  EPC: array[0..5000] of Char;
  temp1,temp2,temp3,temp4:string;
   MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..80]of Char;
  MaskFlag:Byte;
  Ant,AdrTID,LenTID,TIDFlag,QValue,Session:Byte;
begin
  Button21.Enabled:=False;
  Button23.Enabled:=True;
  ListBox1.Items.Clear;
  TIDFlag:=0;
  AdrTID:=0;
  LenTID:=0;
  QValue:=Com_Q.ItemIndex;
  Session:=Com_S.ItemIndex;
     for  Ffenpin:=0 to 49 do
     begin
       Application.ProcessMessages;
       if(breakflag=True)then
       begin
       breakflag:=False;
       if fAppClosed then Close;
       Exit;
       end;
     //  dmaxfre:= Ffenpin;
     //  dminfre:= Ffenpin;
       dminfre := ((2 and 3)shl 6)or (Ffenpin and $3F) ;
       dmaxfre := ((2 and $c)shl 4)or (Ffenpin and $3F) ;
       y_f:=902.75+(Ffenpin and $3F)*0.5;
       temp4:=Format('%f',[y_f,0]);
       temp3:=temp4+'MHz'+'('+Format('%-2d',[Ffenpin])+')';
      // ListBox1.Items.Add(Format('%-4d',[Ffenpin]));
      ListBox1.Items.Add(temp3);
       for i:=0 to 3 do
       begin
       fCmdRet := SetRegion(fComAdr,dmaxfre,dminfre,frmcomportindex);
       if(fCmdRet=0)then
       Break;
       end;
       ncount:=0;
       for j:=0 to 29 do
       begin
         Application.ProcessMessages;
         if(breakflag)then
         begin
         breakflag:=False;
         if fAppClosed then Close;
         Exit;
         end;
         CardNum:=0;
         MaskFlag:=0 ;
         FastFlag:=0;
         fCmdRet :=Inventory_G2(fComAdr,QValue,Session,MaskMem,@MaskAdr,MaskLen,@MaskData,MaskFlag,AdrTID,LenTID,TIDFlag,Target,InAnt,Scantime,FastFlag,@EPC,Ant,Totallen,CardNum,frmcomportindex);
         if(fCmdRet=1) or(fCmdRet=2) or(fCmdRet=3)or(fCmdRet=4)  then
         begin
            ncount:=ncount+1;
            if(ncount=1)then
            UID_index := ListBox1.Items.IndexOf(temp3)
            else
            UID_index := ListBox1.Items.IndexOf(temp3+'            '+Format('%-2d',[ncount-1])+'/30');
            if UID_index>=0 then
            begin
              ListBox1.Items[UID_index] := temp3+'            '+Format('%-2d',[ncount])+'/30';
            end;
         end;
       end;
       if(ncount=0)then
       begin
         UID_index := ListBox1.Items.IndexOf(temp3);
          if UID_index>=0 then
            begin
              ListBox1.Items[UID_index] := temp3+'            '+Format('%-2d',[ncount])+'/30'+'                  '+'00.00%';
            end;
       end;
        UID_index := ListBox1.Items.IndexOf(temp3+'            '+Format('%-2d',[ncount])+'/30');
        if UID_index>=0 then
        begin
          x_z:=ncount/30*100;
          temp1:= FloatToStr(x_z);
          if(ncount=30)then
          temp2:='100.00%'
          else
          begin
             n_index:=Pos('.',temp1);
          //temp2:=Copy(temp1,1,2)+'.'+copy(temp1,3,2)+'%';
           if(n_index>0)then
            temp2:=Copy(temp1,1,n_index-1)+'.'+copy(temp1,n_index+1,2)+'%'
           else
            temp2:= temp1+'.'+'00'+'%';
        //  temp2:=Copy(temp1,1,2)+'.'+copy(temp1,3,2)+'%';
          end;
          ListBox1.Items[UID_index] := temp3+'            '+Format('%-2d',[ncount])+'/30'+'                  '+temp2;
        end;
        ListBox1.ItemIndex:=ListBox1.Items.Count-1;
     end;
    Button21.Enabled:=True;
    Button23.Enabled:=False;
end;

procedure TfrmUHFReader86main.Button23Click(Sender: TObject);
begin
 breakflag:=True;
 Button21.Enabled:=True;
 Button23.Enabled:=False;
end;

procedure TfrmUHFReader86main.Button24Click(Sender: TObject);
begin
ListBox1.Items.Clear;
end;

procedure TfrmUHFReader86main.ComboBox_COMChange(Sender: TObject);
begin
  ComboBox_baud2.Items.Clear;
  if(ComboBox_COM.ItemIndex=0)then
  begin
    ComboBox_baud2.Items.Add('9600bps');
    ComboBox_baud2.Items.Add('19200bps');
    ComboBox_baud2.Items.Add('38400bps');
    ComboBox_baud2.Items.Add('57600bps');
    ComboBox_baud2.Items.Add('115200bps');
    ComboBox_baud2.ItemIndex:=3;
  end
  else
  begin
    ComboBox_baud2.Items.Add('Auto');
    ComboBox_baud2.ItemIndex:=0;
  end;
end;

procedure TfrmUHFReader86main.CheckBox_TIDClick(Sender: TObject);
begin
 if(CheckBox_TID.Checked)then
  begin
  GroupBox31.Enabled:=True;
  Edit6.Enabled:=True;
  Edit11.Enabled:=True;
  end
 else
  begin
  GroupBox31.Enabled:=False;
  Edit6.Enabled:=False;
  Edit11.Enabled:=False;
  end;
end;

procedure TfrmUHFReader86main.Edit_WriteDataKeyPress(Sender: TObject;
  var Key: Char);
var L:Boolean;
begin
    L:=(key<#8)or(key>#8)and(key<#48)or(key>#57)and (key<#65)or(key>#70)and (key<#97)or(key>#102);
    if(key=#22)or (key=#3)then L:=False;
    if l then key:=#0;
    if ( (key>#96)and(key<#103))   then  key:=  char(Ord(key)-32) ;
end;

procedure TfrmUHFReader86main.SearchCallback1(var devIP:DWORD;mac, devName:PChar; dev:LongInt ) ;

begin

end;



procedure TfrmUHFReader86main.C_UserClick(Sender: TObject);
begin
Edit_WordPtr.ReadOnly:=False;
end;

procedure TfrmUHFReader86main.C_TIDClick(Sender: TObject);
begin
Edit_WordPtr.ReadOnly:=False;
end;

procedure TfrmUHFReader86main.C_ReserveClick(Sender: TObject);
begin
Edit_WordPtr.ReadOnly:=False;
end;

procedure TfrmUHFReader86main.C_EPCClick(Sender: TObject);
begin
 if CheckBox18.Checked then
  begin
    Edit_WordPtr.ReadOnly:=True;
    Edit_WordPtr.Text:='0002';
  end
  else
  begin
   Edit_WordPtr.ReadOnly:=False;
  end;
end;

procedure TfrmUHFReader86main.CheckBox18Click(Sender: TObject);
var
  m,n:Integer;
begin
  if(CheckBox18.Checked)then
  begin
    Edit_WordPtr.Text:='0002';
    Edit_WordPtr.ReadOnly:=True;
    n:= Length(Trim(Edit_WriteData.Text));
    if(CheckBox18.Checked)and(n mod 4=0)and(C_EPC.Checked)then
    begin
      m:=n div 4;
      m:=(m and $3F) shl 3;
      Edit_PC.Text:=IntToHex(m,2)+'00';
    end;

  end
  else
  begin
    Edit_WordPtr.ReadOnly:=False;;
  end;
end;

procedure TfrmUHFReader86main.Edit_WriteDataChange(Sender: TObject);
var
  m,n:Integer;
begin
    n:= Length(Trim(Edit_WriteData.Text));
    if(CheckBox18.Checked)and(n mod 4=0)and(C_EPC.Checked)then
    begin
      m:=n div 4;
      m:=(m and $3F) shl 3;
      Edit_PC.Text:=IntToHex(m,2)+'00';
    end;
end;

procedure TfrmUHFReader86main.Button8Click(Sender: TObject);
var
  SeriaNo:array[0..4]of Char;
  temp:string;
begin
  fCmdRet:=GetSeriaNo(fComAdr,SeriaNo,frmComPortindex);
  if(fCmdRet=0)then
  begin
     temp:=getStr(SeriaNo,4);
     Edit15.Text:=getHexStr(temp);
  end;
  AddCmdLog('GetSeriaNo', '获取', fCmdRet);
end;

procedure TfrmUHFReader86main.Button30Click(Sender: TObject);
var
  ATMode:Byte;
begin
  ATMode:=1;
  SeriaATflag:=False;
  fCmdRet:=ChangeATMode(fComAdr,ATMode,frmComPortindex);
  if(fCmdRet<>0)then
  begin
    SeriaATflag:=True;
  end;
  AddCmdLog('ChangeATMode', '进入', fCmdRet);
end;

procedure TfrmUHFReader86main.Button31Click(Sender: TObject);
var
  ATMode:Byte;
begin
  ATMode:=0;
  fCmdRet:=ChangeATMode(fComAdr,ATMode,frmComPortindex);
  AddCmdLog('ChangeATMode', '退出', fCmdRet);
end;

procedure TfrmUHFReader86main.Button35Click(Sender: TObject);
var
  timeout:Byte;
  nlen:Byte;
  cmddata:array[0..100]of Char;
  recvLen:Byte;
  recvdata:array[0..1000]of Char;
  i,q,m,n:Integer;
  cmd,recv,code:string;
begin
  cmd:='AT!LD';
  q:= Length(cmd);
  move(cmd[1],cmddata,q);
  nlen:=q+2;
  cmddata[q]:=Char(13);
  cmddata[q+1]:=Char(10);
  timeout:=30;
  FillChar(recvdata,1000,0);
  fCmdRet:=TransparentCMD(fComAdr,timeout,nlen,cmddata,recvLen,recvdata,frmComPortindex);
  if(fCmdRet=0)then
  begin
   recv:=strpas(recvdata);
   if(Pos('ERROR',recv)>0)or(recvLen=0)then
   begin
      MessageDlg('设置失败', mtWarning, [mbOK], 0);
      Exit;
   end;
  end;
  AddCmdLog('TransparentCMD', '恢复出厂设置', fCmdRet);
end;

procedure TfrmUHFReader86main.InventoryMz4();
begin

end;
procedure TfrmUHFReader86main.Action_Query_6BExecute(Sender: TObject);
var
   i:   Integer;
begin
    if not (SpeedButton_Query_6B.down) then
    begin
      AddCmdLog('Inventory', '退出查询', 0);
      Timer_Test_6B.Enabled:=False;
    end
    else
    begin
      if Bycondition_6B.Checked then
      begin
        if (Edit_Query_StartAddress_6B.Text='') or (Edit_ConditionContent_6B.Text='') then
        begin
          MessageDlg('起始地址或条件为空！请输入！', mtInformation, [mbOK], 0);
          SpeedButton_Query_6B.down:=False;
          Exit;
        end;
      end;
      Timer_Test_6B.Enabled:=True;
      ListView_ID_6B.Clear;
      ComboBox_ID1_6B.Clear;
    end;
end;

procedure TfrmUHFReader86main.Action_Inventroy_6BExecute(Sender: TObject);
procedure ChangeSubItem1(aListItem: TListItem; subItemIndex: Integer; ItemText: string;ant1,RSSI:string);
  begin
    if aListItem.SubItems[subItemIndex] = ItemText then
    begin
      if(aListItem.SubItems[1]='')then
      begin
         aListItem.SubItems[1]:=ant1;
      end
      else
      begin
         aListItem.SubItems[1]:=Str_IntToBin(StrToInt('$'+BitStrToHextStr(aListItem.SubItems[1]))or StrToInt('$'+BitStrToHextStr(ant1)),4) ;
      end;
      if (aListItem.SubItems[2]='99999') or (aListItem.SubItems[2]='')then              //aListItem.SubItems[2]为次数
       aListItem.SubItems[2]:='0'                        //aListItem.SubItems[0]为 EPC号
      else
      begin
       aListItem.SubItems[2]:= IntToStr(StrToInt(aListItem.SubItems[2])+1);
       aListItem.SubItems[3]:=RSSI;
       exit;
      end;
    end;
     aListItem.SubItems[1]:=ant1;
    aListItem.SubItems[2]:='1';
    aListItem.SubItems[3]:=RSSI;
    aListItem.SubItems[subItemIndex] := ItemText;

  end;
   procedure ChangeSubItem2(aListItem: TListItem; subItemIndex: Integer; ItemText,RSSI: string);
  begin
    if aListItem.SubItems[subItemIndex] = ItemText then         //aListItem.SubItems[1]为 EPC长度
    exit;
    aListItem.SubItems[subItemIndex] := ItemText;
  end;
var
  CardNum:Integer;
  EPClen,m,Totallen:Integer;
  ID_6B: array[0..2000] of Char;
  ID2_6B: array[0..5000] of Char;
  isonstring:Boolean;
  isonlistview:Boolean;
  CardIndex: Integer;
  temps: string;
  s,ss, sID: string;
  aListItem: TListItem;
  RSSI,temps2, temps3: string;
  i, j: integer;
  Condition,Ant:Byte;
  StartAddress,mask:Byte;
  ConditionContent:array[0..300] of Char;
  Contentlen:Byte;
begin
  fIsInventoryScan_6B := true;
  try
    if Byone_6B.Checked then
    begin
    fCmdRet :=InventorySingle_6B(fComAdr,Ant,@ID_6B,frmcomportindex);
      if  fCmdRet = $00  then //代表已查找结束，并且内容有发生变化
      begin
         temps :=getStr(ID_6B,10);                                                       //屏蔽
              s := getHexStr(temps);
              RSSI:= Copy(s,19,2);
              s:=Copy(s,3,16);

              RSSI:= IntToStr(StrToInt('$'+RSSI));
            isonlistview:=False;
           // Str_IntToBin(Ant,4)//
            for i:=1 to ListView_ID_6B.Items.Count do      //判断是否在Listview列表内
            begin
              if s=(ListView_ID_6B.Items[i - 1]).SubItems[0] then
              begin
               aListItem := ListView_ID_6B.Items[i - 1];
               isonlistview:=True;
              end;
            end;
            if (not isonlistview) then
            begin
              aListItem := ListView_ID_6B.Items.Add;
              aListItem.Caption := IntToStr(aListItem.Index + 1);
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem := ListView_ID_6B.Items[ListView_ID_6B.Items.Count - 1];
            //  ChangeSubItem2(aListItem, 1, ,RSSI);
              ComboBox_ID1_6B.Items.Add(s);
            end;
             ChangeSubItem1(aListItem, 0,s, Str_IntToBin(Ant,4),RSSI);
              ComboBox_ID1_6B.Itemindex:=0;
      end;
    end

    else if Bycondition_6B.Checked then
    begin
      if  Same_6B.Checked then
      Condition:=$00
      else if Different_6B.Checked then
      Condition:=$01
      else if Greater_6B.Checked  then
      Condition:=$02
      else if Less_6B.Checked then
      Condition:=$03;
      ss:=Edit_ConditionContent_6B.text;
      Contentlen:=Length(Edit_ConditionContent_6B.text) ;
      for i:=1 to 16-Contentlen do
      ss:=ss+'0';
      getCharStr(ss,ConditionContent);
      case (Contentlen div 2) of
        1: mask:=$80;
        2: mask:=$C0;
        3: mask:=$E0;
        4: mask:=$F0;
        5: mask:=$F8;
        6: mask:=$FC;
        7: mask:=$FE;
        8: mask:=$FF;
      end;
      StartAddress:= StrToInt(Edit_Query_StartAddress_6B.Text);
      fCmdRet :=InventoryMultiple_6B(fComAdr,Condition,StartAddress,mask,@ConditionContent,Ant,@ID2_6B,Cardnum,frmcomportindex);

      if  (fCmdRet = $15)or (fCmdRet = $16)or (fCmdRet = $17)or (fCmdRet = $18)or(fCmdRet = $FB)    then
      begin
         temps :=getStr(ID2_6B,Cardnum*10);
          fInventory_EPC_List := tempS;            //存贮记录
            m:=1;
          for CardIndex := 1 to CardNum do
          begin
              sID := copy(tempS,m,10) ;
              m:=m+10;
              if Length(sID) <> 10 then Continue;
              s := getHexStr(sID);
              RSSI:= Copy(s,19,2);
              s:=Copy(s,3,16);
              RSSI:= IntToStr(StrToInt('$'+RSSI));
            isonlistview:=False;
            for i:=1 to ListView_ID_6B.Items.Count do      //判断是否在Listview列表内
            begin
              if copy(s, 1, Length(s))=(ListView_ID_6B.Items[i - 1]).SubItems[0] then
              begin
               aListItem := ListView_ID_6B.Items[i - 1];
               isonlistview:=True;
              end;
            end;
            if (not isonlistview) then
            begin
              aListItem := ListView_ID_6B.Items.Add;
              aListItem.Caption := IntToStr(aListItem.Index + 1);
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem := ListView_ID_6B.Items[ListView_ID_6B.Items.Count - 1];
              ComboBox_ID1_6B.Items.Add(copy(s, 1, Length(s)));
            end;
            ChangeSubItem1(aListItem, 0,s, Str_IntToBin(Ant,4),RSSI);
            ComboBox_ID1_6B.Itemindex:=0;
          end;
      end;
    end;
  //        if ByEffect_6B.Checked  then
//          ListView_ID_6B.Clear;
    if Timer_Test_6B.Enabled then
    begin
      if Bycondition_6B.Checked then
      begin
        if  fCmdRet<>0 then
        AddCmdLog('Inventory', '查询标签', fCmdRet);
      end
      else if fCmdRet = $FB then //说明还未将所有卡读取完
      begin

          StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + ' “查询标签”指令返回=0xFB' +
               '(无电子标签可操作)'
      end
      else if fCmdRet = $00 then
          StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “查询标签”指令返回=0x00' +
               '(找到一张电子标签)'
      else
         AddCmdLog('Inventory', '查询标签', fCmdRet);
      if fCmdRet=RecmdErr then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “查询标签”指令返回=0xee' +
                    '(返回指令错误)' ;
    end;
  finally
     fIsInventoryScan_6B := False;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader86main.Action_LockByte_6BExecute(Sender: TObject);
var
   return,Address:Byte;
begin
   getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
   Address:=StrToInt('$'+Edit_StartAddress_6B.Text);
   return:=MessageDlg('确定要永久锁定该地址吗？', mtInformation, [mbOK, mbCancel], 0);
   if return = IDCancel then
   Exit;
   fCmdRet:=Lock_6B(fComAdr,@fOperID_6B,Address,ferrorcode,frmComPortindex);
   AddCmdLog('Lock', '锁定', fCmdRet);
end;

procedure TfrmUHFReader86main.Action_CheckLock_6BExecute(Sender: TObject);
var
Address,ReLockState:Byte;
begin
   getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
   Address:=StrToInt('$'+Edit_StartAddress_6B.Text);
   fCmdRet:=CheckLock_6B(fComAdr,@fOperID_6B,Address,ReLockState,ferrorcode,frmComPortindex);
   AddCmdLog('CheckLock_6B', '检测锁定', fCmdRet);
   if fCmdRet=0 then
   begin
     if  ReLockState=$00  then
     StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测锁定”指令返回=0x00' +
               '(该字节未被锁定)' ;
     if  ReLockState=$01  then
     StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “检测锁定”指令返回=0x01' +
               '(该字节已经被锁定)';

   end;
end;

procedure TfrmUHFReader86main.Action_CheckLock_6BUpdate(Sender: TObject);
var
  CanEnabled_6B:Boolean;
  CanEnabled2_6B:Boolean;
begin
   SpeedButton_Query_6B.Enabled:=ComIsOpen and not (SpeedButton_Read_6B.down)
                                   and not (SpeedButton_Write_6B.down);
    ComboBox_IntervalTime_6B.Enabled:=not (SpeedButton_Query_6B.down) and  ComIsOpen
                   and not (SpeedButton_Read_6B.down)and not (SpeedButton_Write_6B.down);
    CanEnabled_6B:=not (SpeedButton_Query_6B.down) and  ComIsOpen and (ComboBox_ID1_6B.Text<>'')
                   and not (SpeedButton_Read_6B.down)and not (SpeedButton_Write_6B.down);
    CanEnabled2_6B:=not (SpeedButton_Query_6B.down) and  ComIsOpen and (Bycondition_6B.Checked)
                   and not (SpeedButton_Read_6B.down)and not (SpeedButton_Write_6B.down);

    if  Byone_6B.Checked then
     SpeedButton_Query_6B.Caption:='单张查询'
    else
    begin
     SpeedButton_Query_6B.Caption:='条件查询';
    end;
     GroupBox14.Enabled:=CanEnabled2_6B;
    Label34.Enabled:=CanEnabled2_6B;
//    Label32.Enabled:=CanEnabled2_6B;
//    Edit_mask_6B.Enabled:=CanEnabled2_6B;
    Edit_Query_StartAddress_6B.Enabled:=CanEnabled2_6B;
    Edit_ConditionContent_6B.Enabled:=CanEnabled2_6B;
    Less_6B.Enabled:=CanEnabled2_6B;
    Different_6B.Enabled:=CanEnabled2_6B;
    Same_6B.Enabled:=CanEnabled2_6B;
    Greater_6B.Enabled:=CanEnabled2_6B;

    GroupBox13.Enabled:=not (SpeedButton_Query_6B.down) and  ComIsOpen
                        and (ComboBox_ID1_6B.Text<>'');
    Memo_DataShow_6B.Enabled:=GroupBox13.Enabled;
    Button12.Enabled:=GroupBox13.Enabled;
    SpeedButton_Read_6B.Enabled:=GroupBox13.Enabled and not (SpeedButton_Write_6B.down);
    SpeedButton_Write_6B.Enabled:=GroupBox13.Enabled and not (SpeedButton_Read_6B.down);

    Label30.Enabled:=CanEnabled_6B;
    Label31.Enabled:=CanEnabled_6B;
    ComboBox_ID1_6B.Enabled:=CanEnabled_6B;
    Edit_WriteData_6B.Enabled:=CanEnabled_6B;
    Edit_StartAddress_6B.Enabled:=CanEnabled_6B;
    Edit_Len_6B.Enabled:=CanEnabled_6B;
    Button11.Enabled:=CanEnabled_6B;
    Button10.Enabled:=CanEnabled_6B;

//    Button14.Enabled:=CanEnabled_6B;
//    Button15.Enabled:=CanEnabled_6B;
end;

procedure TfrmUHFReader86main.Timer_Test_6BTimer(Sender: TObject);
begin
    if fisinventoryscan_6B then    Exit;
    Action_Inventroy_6BExecute(sender);
end;

procedure TfrmUHFReader86main.SpeedButton_Read_6BClick(Sender: TObject);
begin
if SpeedButton_Write_6B.Down  then
    begin
    if ( Edit_WriteData_6B.Text='' )or (Length(Edit_WriteData_6B.Text)mod 2<>0) then
    begin
    MessageDlg('请输入以字节为单位的16进制数！'+#13+#10+'例如：12、1234', mtInformation, [mbOK], 0);
    SpeedButton_Write_6B.Down:=False;
    Exit;
    end;
    end;
    if SpeedButton_Read_6B.Down or SpeedButton_Write_6B.Down  then
    begin
    if ( Edit_StartAddress_6B.Text='' )or (Edit_Len_6B.Text='') then
    begin
    MessageDlg('起始地址或长度为空！请输入！', mtInformation, [mbOK], 0);
    SpeedButton_Read_6B.Down:=False;
    SpeedButton_Write_6B.Down:=False;
    Exit;
    end;
    Timer_6B_ReadWrite.Enabled:=True;
    end
    else
    begin
    if Sender= SpeedButton_Read_6B  then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “读数据”结束' ;
    if Sender= SpeedButton_Write_6B  then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “写数据”结束' ;
    Timer_6B_ReadWrite.Enabled:=False;
    end;
end;

procedure TfrmUHFReader86main.Timer_6B_ReadWriteTimer(Sender: TObject);
var
    i: Integer;
    s2: string;
    CardData: array[0..320] of Char;
    Mem,Num,StartAddress:Byte;
    Writedata:array[0..320] of Char;
    Writedatalen:byte;
    writtenbyte:longint;
begin
  if  fTimer_6B_ReadWrite then    exit;
  fTimer_6B_ReadWrite:=true;
  try
    if SpeedButton_Read_6B.Down  then
    begin
      getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
      StartAddress:=StrToInt('$'+Edit_StartAddress_6B.Text);
      Num:=StrToInt(Edit_Len_6B.Text);
      fCmdRet:=ReadData_6B(fComAdr,@fOperID_6B,StartAddress,Num,CardData,ferrorcode,frmComPortindex);
      if fCmdRet=0 then
      begin
        for i := 0 to Num - 1 do
        s2 := s2 + IntToHex(ord(CardData[i]), 2);
        Memo_DataShow_6B.Lines.Add(s2);
      end;
      AddCmdLog('ReadData', '读数据', fCmdRet);
      if not (SpeedButton_Read_6B.Down)  then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “读数据”结束' ;
    end;
    
    if SpeedButton_Write_6B.Down  then
    begin
      getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
      StartAddress:=StrToInt('$'+Edit_StartAddress_6B.Text);
      getCharStr(Edit_WriteData_6B.text,Writedata);
      Writedatalen:= Length(Edit_WriteData_6B.text)div 2 ;
      fCmdRet:=WriteData_6B(fComAdr,@fOperID_6B,StartAddress,Writedata,Writedatalen,writtenbyte,ferrorcode,frmComPortindex);
      AddCmdLog('WriteData', '写数据', fCmdRet);
      if not (SpeedButton_Write_6B.Down)  then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “写数据”结束' ;
    end;
  finally
  fTimer_6B_ReadWrite:=false;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader86main.Button12Click(Sender: TObject);
begin
Memo_DataShow_6B.Lines.Clear;
end;

procedure TfrmUHFReader86main.ComboBox_IntervalTime_6BChange(Sender: TObject);
begin
Timer_Test_6B.Interval :=(ComboBox_IntervalTime_6B.ItemIndex+4)*10;
end;

procedure TfrmUHFReader86main.ListView1DblClick(Sender: TObject);
begin       //

end;

procedure TfrmUHFReader86main.Button6Click(Sender: TObject);
var
Totallen:LongInt;
CardNum:longint;
pEPCList:array[0..20000]of Char;
begin
    fCmdRet:=ReadBuffer_G2(fComAdr,Totallen,CardNum,pEPCList,frmComPortindex);
    MessageDlg(IntToStr(fCmdRet), mtWarning, [mbOK], 0);
end;

procedure TfrmUHFReader86main.btStartBufferClick(Sender: TObject);
begin
  Timer1.Enabled:= not Timer1.Enabled;
  if(Timer1.Enabled)then
  begin
    btStartBuffer.Caption:='停止';
  end
  else
  begin
    btStartBuffer.Caption:='开始查询';
  end;
end;

procedure TfrmUHFReader86main.btClearClick(Sender: TObject);
begin
lb_Num.Caption:='0';
ListView1.Items.Clear;
end;

procedure TfrmUHFReader86main.Timer1Timer(Sender: TObject);
var
  CardNum:Integer;
  temps: string;
  s,ss, sEPC: string;
  MaskMem:Byte;
  MaskAdr:array[0..2]of Char;
  MaskLen:Byte;
  MaskData:array[0..800]of Char;
  MaskFlag:Byte;
  Ant,AdrTID,LenTID,TIDFlag:Byte;
  QValue,Session:Byte;
  BufferCount,TagNum:LongInt;
begin
  if fIsInventoryScan then Exit;
  fIsInventoryScan:=True;
  QValue:=4;
  Session:=1;
  FastFlag:=1;
  InAnt:=$80;
  MaskMem:=0;
  MaskFlag:=0;
  if(rb_BEPC.Checked)then
  TIDFlag:=0
  else
  TIDFlag:=1;
  AdrTID:=0;
  LenTID:=6;
  Target:=0;
  Scantime:=3;
  BufferCount:=0;
  TagNum:=0;
  fCmdRet :=InventoryBuffer_G2(fComAdr,QValue,Session,MaskMem,@MaskAdr,MaskLen,@MaskData,MaskFlag,AdrTID,LenTID,TIDFlag,Target,InAnt,Scantime,FastFlag,BufferCount, TagNum,frmcomportindex);
  if(fCmdRet=0)then
  begin
     lb_Num.Caption:=IntToStr(BufferCount);
  end
  else
  begin
    lb_Num.Caption:='0';
  end;
  AddCmdLog('InventoryBuffer_G2','带缓存查询',fCmdRet);
  fIsInventoryScan:=False;
end;

procedure TfrmUHFReader86main.btClearBufferClick(Sender: TObject);
begin
fCmdRet:=ClearBuffer_G2(fComAdr,frmcomportindex);
AddCmdLog('ClearBuffer_G2','清空缓存',fCmdRet);
end;

procedure TfrmUHFReader86main.btGetBufferNumClick(Sender: TObject);
var
  Count:LongInt;
begin
  Count:=0;
  lb_Num.Caption:='0';
  fCmdRet:=GetBufferCnt_G2(fComAdr,Count,frmcomportindex);
  if(fCmdRet=0)then
  begin
     lb_Num.Caption:= IntToStr(Count);
  end;
  AddCmdLog('GetBufferCnt_G2','查询缓存区标签数量',fCmdRet);
end;

procedure TfrmUHFReader86main.btGetBufferClick(Sender: TObject);
var
  pEPCList:array[0..30000]of Char;
  Totallen,CardNum,CardIndex,EPClen,m:LongInt;
  temps,sEPC,s,s2,RSSI,ANTstr,strcount:string;
  aListItem: TListItem;
begin
  Totallen:=0;
  CardNum:=0;
  lb_Num.Caption:='0';
  ListView1.Items.Clear;
  fCmdRet:=ReadBuffer_G2(fComAdr, Totallen,CardNum,pEPCList, frmcomportindex);
  AddCmdLog('ReadBuffer_G2','读取缓存',fCmdRet);
  if(fCmdRet=1)then
  begin
    temps :=getStr(pEPCList,Totallen);
    m:=1;
    for CardIndex := 1 to CardNum do
    begin
      ANTstr:=IntToStr(ord(tempS[m]));
      EPClen:=ord(tempS[m+1]);
      sEPC := copy(tempS,m+2,EPClen) ;
      s := getHexStr(sEPC);
      RSSI:= IntToStr(ord(tempS[m+2+EPClen]));
      strcount:=IntToStr(ord(tempS[m+3+EPClen]));
      m:=m+4+ EPClen;
      aListItem := ListView1.Items.Add;
      aListItem.Caption := IntToStr(aListItem.Index + 1);
      aListItem.SubItems.Add('');
      aListItem.SubItems.Add('');
      aListItem.SubItems.Add('');
      aListItem.SubItems.Add('');
      aListItem.SubItems.Add('');
      aListItem.SubItems.Add('');
      aListItem.SubItems[0]:=s;
      aListItem.SubItems[1]:=IntToStr(EPClen);
      aListItem.SubItems[2]:=ANTstr;
      aListItem.SubItems[3]:=RSSI;
      aListItem.SubItems[4]:=strcount;

    end;
    lb_Num.Caption:= IntToStr(CardNum);
    StatusBar1.Panels[0].Text:= FormatDateTime('hh:mm:ss', Now) + '' + '读取缓存结束';
  end;
end;

procedure TfrmUHFReader86main.btGetAndClBufferClick(Sender: TObject);
begin
  btGetBufferClick(Sender);
  btClearBufferClick(Sender);
end;

procedure TfrmUHFReader86main.bt_setlenClick(Sender: TObject);
var
  SaveLen:Byte;
begin
  SaveLen:= 0;
  if(rb_128.Checked)then
      SaveLen := 0
  else
      SaveLen := 1;
  fCmdRet:= SetSaveLen(fComAdr, SaveLen, frmcomportindex);
  AddCmdLog('SetSaveLen','设置',fCmdRet);

end;

procedure TfrmUHFReader86main.bt_getlenClick(Sender: TObject);
var
  SaveLen:Byte;
begin
  SaveLen := 0;
  fCmdRet := GetSaveLen(fComAdr,SaveLen, frmcomportindex);
  if (fCmdRet = 0)then
  begin
      if (SaveLen = 0)then
          rb_128.Checked := true
      else
          rb_496.Checked := true;
  end;
  AddCmdLog('GetSaveLen','读取',fCmdRet);
end;

procedure TfrmUHFReader86main.ExtWriteClick(Sender: TObject);
var
    Mem,Num:Byte;
    Writedata:array[0..320] of Char;
    WNum:Byte;
    ENum:Byte;
    EPClength:byte;
    i: Integer;
    s,s2: string;
    CardData: array[0..320] of Char;
    WrittenDataNum:LongInt;
    MaskMem:Byte;
    MaskAdr:array[0..2]of Char;
    MaskLen:Byte;
    MaskData:array[0..80]of Char;
    WordPtr:array[0..2]of Char;
begin
    FillChar( MaskData,80,0);
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3 ;
    if(CheckBox1.Checked)then
    begin
      ENum:=255;
      if(Edit2.Text='')then Exit;
      if(Edit3.Text='')then Exit;
      if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
      getCharStr(Edit2.Text,MaskAdr);
      MaskLen:=StrToInt('$'+trim(edit3.Text));
      getCharStr(Edit1.Text,MaskData);
    end
    else
     ENum:=Length(ComboBox_EPC2.text) div 4;
    if Length(Edit_AccessCode2.Text)<8 then
    begin
      MessageDlg('访问密码小于8位！请重新输入！', mtInformation, [mbOK], 0);
      Exit;
    end;
    if (Length(Edit_WordPtr.Text )<>4)or(Edit_Len.Text='')then
    begin
      MessageDlg('起始地址或长度为空！请输入！', mtInformation, [mbOK], 0);
      Exit;
    end;
    getCharStr(ComboBox_EPC2.text,fOperEPC);
    getCharStr(Edit_AccessCode2.text,fPassword);
    getCharStr(Edit_WordPtr.text,WordPtr);
    Num:=StrToInt(Edit_Len.Text);
    if  C_Reserve.Checked then
      Mem:=0
    else if  C_EPC.Checked then
      Mem:=1
    else if  C_TID.Checked then
      Mem:=2
    else if  C_User.Checked then
      Mem:=3;
    if (Edit_WriteData.Text='' )or (Length(Edit_WriteData.Text)mod 4<>0) then
    begin
    MessageDlg('请输入以字为单位的16进制数！'+#13+#10+'例如：1234、12345678', mtInformation, [mbOK], 0);
    Exit;      //
    end;
    WNum:= Length(Edit_WriteData.text)div 4 ;
    getCharStr(Edit_WriteData.text,Writedata);
    if(CheckBox18.Checked)and(C_EPC.Checked)then
    begin
     getCharStr('0001',WordPtr);
     WNum:= Length(Edit_WriteData.text)div 4 +1;
     getCharStr(edit_pc.Text+Edit_WriteData.text,Writedata);
    end;
    fCmdRet:=ExtWriteData_G2(fComAdr,@fOperEPC,WNum,ENum,Mem,WordPtr,@Writedata,@fPassword,MaskMem,@MaskAdr,MaskLen,@MaskData,ferrorcode,frmComPortindex);
    AddCmdLog('WriteData','扩展写数据', fCmdRet,ferrorcode);
    if fCmdRet=0 then
    begin
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “扩展写数据”指令返回=0x00' +
                '(数据完全写入成功)';
    end;

end;

procedure TfrmUHFReader86main.ExtReadClick(Sender: TObject);
var
    Mem,Num:Byte;
    ENum:byte;
    i: Integer;
    s2: string;
    CardData: array[0..320] of Char;
     MaskMem:Byte;
    MaskAdr:array[0..2]of Char;
    MaskLen:Byte;
    MaskData:array[0..80]of Char;
    WordPtr:array[0..2]of Char;
begin
  FillChar( MaskData,80,0);
    if(R_EPC.Checked)then MaskMem:=1;
    if(R_TID.Checked)then MaskMem:=2;
    if(R_User.Checked)then MaskMem:=3;
    if(CheckBox1.Checked)then
    begin
    ENum:=255;
    if(Edit2.Text='')then Exit;
    if(Edit3.Text='')then Exit;
    if(Edit1.Text='')or(Length(Edit1.Text)mod 2<>0)then Exit;
    getCharStr(Edit2.Text,MaskAdr);
    MaskLen:=StrToInt('$'+trim(edit3.Text));
    getCharStr(Edit1.Text,MaskData);
    END
    else
     ENum:=Length(ComboBox_EPC2.text) div 4;
    if (Length(Edit_WordPtr.text)<>4) or (Edit_Len.Text='')then
    begin
      Exit;
    end;
    getCharStr(ComboBox_EPC2.text,fOperEPC);
    getCharStr(Edit_AccessCode2.text,fPassword);
    getCharStr(Edit_WordPtr.text,WordPtr);
    Num:=StrToInt(Edit_Len.Text);
    if  C_Reserve.Checked then
      Mem:=0
    else if  C_EPC.Checked then
      Mem:=1
    else if  C_TID.Checked then
      Mem:=2
    else if  C_User.Checked then
      Mem:=3;
    fCmdRet:=ExtReadData_G2(fComAdr,@fOperEPC,ENum,Mem,WordPtr,Num,@fPassword,MaskMem,@MaskAdr,MaskLen,MaskData,@CardData,ferrorcode,frmComPortindex);
    if fCmdRet=0 then
    begin
      for i := 0 to Num*2 - 1 do
      s2 := s2 + IntToHex(ord(CardData[i]), 2);
      Memo_DataShow.Lines.Add(s2);
    end;
    AddCmdLog('ReadData','扩展读数据', fCmdRet);

end;

end.



