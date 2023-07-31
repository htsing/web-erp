object frmUHFReader86main: TfrmUHFReader86main
  Left = 330
  Top = 85
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'UHFReader86 Demo Software V1.0'
  ClientHeight = 704
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 786
    Height = 685
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Reader Parameter'
      object GroupBox_ReaderInfo: TGroupBox
        Left = 136
        Top = 10
        Width = 633
        Height = 102
        Caption = 'Reader Information'
        TabOrder = 0
        object Label2: TLabel
          Left = 162
          Top = 18
          Width = 38
          Height = 13
          Caption = 'Version:'
        end
        object Label3: TLabel
          Left = 10
          Top = 47
          Width = 41
          Height = 13
          Caption = 'Address:'
        end
        object Label4: TLabel
          Left = 328
          Top = 47
          Width = 118
          Height = 13
          Caption = 'Max InventoryScanTime:'
        end
        object Label10: TLabel
          Left = 10
          Top = 18
          Width = 27
          Height = 13
          Caption = 'Type:'
        end
        object Label11: TLabel
          Left = 328
          Top = 18
          Width = 36
          Height = 13
          Caption = 'Protocl:'
        end
        object Label8: TLabel
          Left = 160
          Top = 47
          Width = 33
          Height = 13
          Caption = 'Power:'
        end
        object Label13: TLabel
          Left = 160
          Top = 76
          Width = 51
          Height = 13
          Caption = 'Dmaxfre'#65306
        end
        object Label14: TLabel
          Left = 10
          Top = 76
          Width = 53
          Height = 13
          Caption = 'Dminxfre'#65306
        end
        object Edit_Version: TEdit
          Left = 225
          Top = 14
          Width = 96
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 1
        end
        object Edit_ComAdr: TEdit
          Left = 72
          Top = 43
          Width = 81
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 3
        end
        object Edit_scantime: TEdit
          Left = 488
          Top = 43
          Width = 129
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 5
        end
        object Edit_Type: TEdit
          Left = 72
          Top = 14
          Width = 81
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 0
        end
        object Button3: TButton
          Left = 488
          Top = 69
          Width = 129
          Height = 25
          Action = Action_GetReaderInformation
          Caption = 'Get Reader Info'
          TabOrder = 6
        end
        object Edit_dmaxfre: TEdit
          Left = 225
          Top = 72
          Width = 96
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 8
        end
        object Edit_dminfre: TEdit
          Left = 72
          Top = 72
          Width = 81
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 7
        end
        object Edit_power: TEdit
          Left = 225
          Top = 43
          Width = 96
          Height = 21
          Color = clSilver
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 4
        end
        object EPCC1G2: TCheckBox
          Left = 488
          Top = 25
          Width = 73
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'EPCC1-G2'
          ParentBiDiMode = False
          TabOrder = 2
        end
        object ISO180006B: TCheckBox
          Left = 488
          Top = 8
          Width = 89
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'ISO18000-6B'
          ParentBiDiMode = False
          TabOrder = 9
        end
      end
      object GroupBox2: TGroupBox
        Left = 136
        Top = 113
        Width = 633
        Height = 148
        Caption = 'Set Reader Parameter'
        TabOrder = 1
        object Label15: TLabel
          Left = 8
          Top = 88
          Width = 53
          Height = 13
          Caption = 'Dminxfre'#65306
        end
        object Label16: TLabel
          Left = 8
          Top = 119
          Width = 51
          Height = 13
          Caption = 'Dmaxfre'#65306
        end
        object Label17: TLabel
          Left = 202
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Baud'#65306
        end
        object Label1: TLabel
          Left = 8
          Top = 26
          Width = 69
          Height = 13
          Caption = 'Address(HEX):'
        end
        object Label7: TLabel
          Left = 8
          Top = 57
          Width = 33
          Height = 13
          Caption = 'Power:'
        end
        object Label5: TLabel
          Left = 202
          Top = 57
          Width = 121
          Height = 13
          Caption = 'Max InventoryScanTime::'
        end
        object Button5: TButton
          Left = 344
          Top = 113
          Width = 129
          Height = 25
          Action = Action_SetReaderInformation
          Caption = 'Set Parameter'
          TabOrder = 6
        end
        object ComboBox_baud: TComboBox
          Left = 331
          Top = 22
          Width = 129
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            '9600bps'
            '19200bps'
            '38400bps'
            '57600bps'
            '115200bps')
        end
        object Edit_NewComAdr: TEdit
          Left = 80
          Top = 22
          Width = 113
          Height = 21
          MaxLength = 2
          TabOrder = 0
          Text = '00'
        end
        object ComboBox_scantime: TComboBox
          Left = 331
          Top = 53
          Width = 129
          Height = 21
          Style = csDropDownList
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 13
          TabOrder = 3
        end
        object Button1: TButton
          Left = 488
          Top = 113
          Width = 129
          Height = 25
          Action = Action_SetReaderInformation_0
          Caption = 'Default Parameter'
          TabOrder = 7
        end
        object ComboBox_dminfre: TComboBox
          Left = 80
          Top = 84
          Width = 113
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 4
          OnSelect = ComboBox_dminfreSelect
        end
        object ComboBox_dmaxfre: TComboBox
          Tag = 1
          Left = 80
          Top = 115
          Width = 113
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 8
          OnSelect = ComboBox_dminfreSelect
        end
        object ComboBox_PowerDbm: TComboBox
          Left = 80
          Top = 53
          Width = 113
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26')
        end
        object CheckBox_SameFre: TCheckBox
          Left = 202
          Top = 88
          Width = 81
          Height = 17
          Caption = 'Single Freq'
          TabOrder = 5
          OnClick = CheckBox_SameFreClick
        end
        object GroupBox7: TGroupBox
          Left = 464
          Top = 11
          Width = 153
          Height = 96
          Caption = 'FreqBaud'
          TabOrder = 9
          object RadioButton_band2: TRadioButton
            Left = 8
            Top = 20
            Width = 113
            Height = 17
            Caption = 'Chinese band2'
            TabOrder = 0
            OnClick = RadioButton_band2Click
          end
          object RadioButton_band3: TRadioButton
            Left = 8
            Top = 38
            Width = 113
            Height = 17
            Caption = 'US band'
            TabOrder = 1
            OnClick = RadioButton_band3Click
          end
          object RadioButton_band4: TRadioButton
            Left = 8
            Top = 54
            Width = 113
            Height = 17
            Caption = 'Korean band'
            TabOrder = 2
            OnClick = RadioButton_band4Click
          end
          object RadioButton_band5: TRadioButton
            Left = 8
            Top = 73
            Width = 113
            Height = 17
            Caption = 'EU band'
            TabOrder = 3
            OnClick = RadioButton_band5Click
          end
        end
      end
      object GroupBox8: TGroupBox
        Left = 549
        Top = 265
        Width = 220
        Height = 42
        Caption = 'Beep Operation'
        TabOrder = 2
        object Radio_beepEn: TRadioButton
          Left = 2
          Top = 17
          Width = 42
          Height = 17
          Caption = 'On'
          TabOrder = 0
        end
        object Radio_beepDis: TRadioButton
          Left = 81
          Top = 17
          Width = 40
          Height = 17
          Caption = 'Off'
          TabOrder = 1
        end
        object Button_Beep: TButton
          Left = 141
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Set'
          TabOrder = 2
          OnClick = Button_BeepClick
        end
      end
      object GroupBox27: TGroupBox
        Left = 136
        Top = 267
        Width = 404
        Height = 40
        Caption = 'GPIO Operation'
        TabOrder = 3
        object Button_SetGPIO: TButton
          Left = 238
          Top = 10
          Width = 72
          Height = 25
          Caption = 'Set'
          TabOrder = 0
          OnClick = Button_SetGPIOClick
        end
        object Button_GetGPIO: TButton
          Left = 320
          Top = 10
          Width = 70
          Height = 25
          Caption = 'Get'
          TabOrder = 1
          OnClick = Button_GetGPIOClick
        end
        object CheckBox2: TCheckBox
          Left = 6
          Top = 15
          Width = 49
          Height = 17
          Caption = 'OUT1'
          TabOrder = 2
        end
        object CheckBox3: TCheckBox
          Left = 64
          Top = 15
          Width = 49
          Height = 17
          Caption = 'OUT2'
          TabOrder = 3
        end
        object CheckBox6: TCheckBox
          Left = 120
          Top = 15
          Width = 54
          Height = 17
          Caption = 'INT1'
          Enabled = False
          TabOrder = 4
        end
        object CheckBox4: TCheckBox
          Left = 173
          Top = 15
          Width = 54
          Height = 17
          Caption = 'INT2'
          Enabled = False
          TabOrder = 5
        end
      end
      object GroupBox30: TGroupBox
        Left = 0
        Top = 10
        Width = 135
        Height = 199
        Caption = 'Communication'
        TabOrder = 4
        object GroupBox_COM: TGroupBox
          Left = 0
          Top = 2
          Width = 137
          Height = 196
          Caption = 'COM'
          TabOrder = 0
          object Label6: TLabel
            Left = 7
            Top = 19
            Width = 58
            Height = 13
            Caption = 'COM Port'#65306
          end
          object Label12: TLabel
            Left = 8
            Top = 129
            Width = 87
            Height = 13
            Caption = 'Opened COM Port'
          end
          object Label47: TLabel
            Left = 8
            Top = 90
            Width = 37
            Height = 13
            Caption = 'Baud'#65306
          end
          object ComboBox_COM: TComboBox
            Left = 60
            Top = 14
            Width = 70
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBox_COMChange
          end
          object Button2: TButton
            Left = 7
            Top = 64
            Width = 120
            Height = 22
            Caption = 'Open Com Port'
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button4: TButton
            Left = 5
            Top = 169
            Width = 123
            Height = 21
            Caption = 'Close Com Port'
            TabOrder = 5
            OnClick = Button4Click
          end
          object StaticText1: TStaticText
            Left = 7
            Top = 42
            Width = 83
            Height = 17
            Caption = 'Reader Address:'
            TabOrder = 2
          end
          object Edit_CmdComAddr: TEdit
            Left = 97
            Top = 39
            Width = 31
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 1
            Text = 'FF'
            OnKeyPress = Edit2KeyPress
          end
          object ComboBox_AlreadyOpenCOM: TComboBox
            Left = 8
            Top = 144
            Width = 121
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 4
            OnCloseUp = ComboBox_AlreadyOpenCOMCloseUp
          end
          object ComboBox_baud2: TComboBox
            Left = 8
            Top = 105
            Width = 121
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 6
            Items.Strings = (
              '9600bps'
              '19200bps'
              '38400bps'
              '57600bps'
              '115200bps')
          end
        end
      end
      object GroupBox45: TGroupBox
        Left = 1
        Top = 211
        Width = 133
        Height = 72
        Caption = 'Reader seria number'
        TabOrder = 5
        object Edit15: TEdit
          Left = 9
          Top = 16
          Width = 115
          Height = 21
          TabOrder = 0
        end
        object Button8: TButton
          Left = 53
          Top = 42
          Width = 71
          Height = 24
          Caption = 'Get'
          TabOrder = 1
          OnClick = Button8Click
        end
      end
      object GroupBox12: TGroupBox
        Left = 135
        Top = 310
        Width = 408
        Height = 63
        Caption = 'Buffer EPC/TID length'
        TabOrder = 6
        object rb_128: TRadioButton
          Left = 24
          Top = 32
          Width = 65
          Height = 17
          Caption = '128bit'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rb_496: TRadioButton
          Left = 96
          Top = 32
          Width = 65
          Height = 17
          Caption = '496bit'
          TabOrder = 1
        end
        object bt_setlen: TButton
          Left = 242
          Top = 24
          Width = 68
          Height = 25
          Caption = 'Set'
          TabOrder = 2
          OnClick = bt_setlenClick
        end
        object bt_getlen: TButton
          Left = 322
          Top = 24
          Width = 68
          Height = 25
          Caption = 'Get'
          TabOrder = 3
          OnClick = bt_getlenClick
        end
      end
    end
    object TabSheet_EPCC1G2: TTabSheet
      Caption = 'EPCC1-G2 Test'
      ImageIndex = 2
      object GroupBox11: TGroupBox
        Left = 8
        Top = 0
        Width = 480
        Height = 206
        Caption = 'List EPC of Tags'
        TabOrder = 0
        object Label89: TLabel
          Left = 11
          Top = 18
          Width = 70
          Height = 13
          Caption = 'Current EPC'#65306
        end
        object Label90: TLabel
          Left = 294
          Top = 26
          Width = 76
          Height = 13
          Caption = 'Total Number'#65306
        end
        object ListView_EPC: TListView
          Left = 8
          Top = 59
          Width = 465
          Height = 140
          Columns = <
            item
              Caption = 'No.'
            end
            item
              Caption = 'EPC'
              Width = 210
            end
            item
              Caption = 'Length'
            end
            item
              Caption = 'ANT'
            end
            item
              Caption = 'Times'
            end
            item
              Caption = 'RSSI'
            end>
          GridLines = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object Edit17: TEdit
          Left = 10
          Top = 33
          Width = 268
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit18: TEdit
          Left = 370
          Top = 11
          Width = 102
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox17: TGroupBox
        Left = 493
        Top = 0
        Width = 280
        Height = 261
        Caption = 'Query Tag'
        TabOrder = 1
        object Label25: TLabel
          Left = 10
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Read Interval:'
        end
        object SpeedButton_Query: TSpeedButton
          Left = 192
          Top = 10
          Width = 81
          Height = 25
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'Query Tag'
          OnClick = SpeedButton_QueryClick
        end
        object Label29: TLabel
          Left = 9
          Top = 206
          Width = 50
          Height = 13
          Caption = 'Q Value'#65306
        end
        object Label30: TLabel
          Left = 134
          Top = 206
          Width = 79
          Height = 13
          Caption = 'Session Value'#65306
        end
        object Label22: TLabel
          Left = 18
          Top = 234
          Width = 83
          Height = 13
          Caption = 'Max ScanTime'#65306
        end
        object ComboBox_IntervalTime: TComboBox
          Left = 79
          Top = 12
          Width = 109
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
          OnChange = ComboBox_IntervalTimeChange
        end
        object GroupBox44: TGroupBox
          Left = 4
          Top = 34
          Width = 271
          Height = 41
          Caption = 'Query TID Parameter'
          TabOrder = 1
          object Label67: TLabel
            Left = 9
            Top = 21
            Width = 47
            Height = 13
            Caption = 'StartAddr:'
          end
          object Label68: TLabel
            Left = 120
            Top = 21
            Width = 21
            Height = 13
            Caption = 'Len:'
          end
          object Edit13: TEdit
            Left = 58
            Top = 16
            Width = 53
            Height = 21
            TabOrder = 0
            Text = '02'
          end
          object Edit14: TEdit
            Left = 145
            Top = 15
            Width = 51
            Height = 21
            TabOrder = 1
            Text = '04'
          end
          object CheckBox_TID: TCheckBox
            Left = 210
            Top = 16
            Width = 55
            Height = 17
            Caption = 'TID'
            TabOrder = 2
            OnClick = CheckBox_TIDClick
          end
        end
        object GroupBox13: TGroupBox
          Left = 5
          Top = 76
          Width = 270
          Height = 119
          Caption = 'Mask conditions'
          TabOrder = 2
          object Label27: TLabel
            Left = 8
            Top = 19
            Width = 144
            Height = 13
            Caption = 'Mask Start Bit Address(Hex)'#65306
          end
          object Label28: TLabel
            Left = 8
            Top = 72
            Width = 114
            Height = 13
            Caption = 'Mask Bit Length(Hex)'#65306
          end
          object Label21: TLabel
            Left = 8
            Top = 99
            Width = 89
            Height = 13
            Caption = 'Mask Data(Hex)'#65306
          end
          object CheckBox1: TCheckBox
            Left = 207
            Top = 17
            Width = 57
            Height = 17
            Caption = 'Enable'
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 144
            Top = 12
            Width = 57
            Height = 21
            MaxLength = 4
            TabOrder = 1
            Text = '0000'
            OnKeyPress = Edit2KeyPress
          end
          object Edit3: TEdit
            Left = 115
            Top = 68
            Width = 149
            Height = 21
            MaxLength = 2
            TabOrder = 2
            Text = '00'
            OnKeyPress = Edit2KeyPress
          end
          object GroupBox3: TGroupBox
            Left = 7
            Top = 31
            Width = 257
            Height = 35
            TabOrder = 3
            object R_EPC: TRadioButton
              Left = 7
              Top = 11
              Width = 57
              Height = 17
              Caption = 'EPC'
              TabOrder = 0
            end
            object R_TID: TRadioButton
              Left = 87
              Top = 11
              Width = 56
              Height = 17
              Caption = 'TID'
              TabOrder = 1
            end
            object R_User: TRadioButton
              Left = 173
              Top = 11
              Width = 65
              Height = 17
              Caption = 'User'
              TabOrder = 2
            end
          end
          object Edit1: TEdit
            Left = 96
            Top = 93
            Width = 153
            Height = 21
            TabOrder = 4
            Text = '00'
            OnKeyPress = Edit2KeyPress
          end
        end
        object Com_Q: TComboBox
          Left = 56
          Top = 198
          Width = 67
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15')
        end
        object Com_S: TComboBox
          Left = 209
          Top = 198
          Width = 68
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 4
          Items.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
        object ComboBox1: TComboBox
          Left = 113
          Top = 228
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 5
        end
      end
      object GroupBox9: TGroupBox
        Left = 5
        Top = 586
        Width = 244
        Height = 69
        Caption = 'Kill Tag'
        TabOrder = 2
        object Label33: TLabel
          Left = 9
          Top = 36
          Width = 62
          Height = 26
          Caption = 'Kill Password'#13#10'(8 Hex):'
        end
        object Button_DestroyCard: TButton
          Left = 158
          Top = 40
          Width = 81
          Height = 23
          Action = Action_DestroyCard
          Caption = 'Kill Tag'
          TabOrder = 2
        end
        object Edit_DestroyCode: TEdit
          Left = 82
          Top = 41
          Width = 72
          Height = 21
          MaxLength = 8
          TabOrder = 1
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object ComboBox_EPC3: TComboBox
          Tag = 3
          Left = 10
          Top = 15
          Width = 231
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
      end
      object GroupBox23: TGroupBox
        Left = 252
        Top = 589
        Width = 235
        Height = 67
        Caption = 'Write EPC(Random write one tag in the antenna)'
        TabOrder = 3
        object Label38: TLabel
          Left = 9
          Top = 47
          Width = 46
          Height = 26
          Caption = 'Password'#13#10
        end
        object Label39: TLabel
          Left = 8
          Top = 16
          Width = 53
          Height = 26
          Caption = 'Write EPC:'#13#10'(1-31Word)'
        end
        object Edit_AccessCode3: TEdit
          Left = 65
          Top = 43
          Width = 67
          Height = 21
          MaxLength = 8
          TabOrder = 2
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object Button_WriteEPC_G2: TButton
          Left = 141
          Top = 40
          Width = 81
          Height = 25
          Action = Action_WriteEPC_G2
          Caption = 'Write EPC'
          TabOrder = 1
        end
        object Edit_WriteEPC: TEdit
          Left = 66
          Top = 17
          Width = 159
          Height = 21
          MaxLength = 128
          TabOrder = 0
          Text = '0000'
          OnKeyPress = Edit2KeyPress
        end
      end
      object GroupBox20: TGroupBox
        Left = 492
        Top = 262
        Width = 281
        Height = 178
        Caption = 'Read Protection'
        TabOrder = 4
        object Label32: TLabel
          Left = 9
          Top = 37
          Width = 84
          Height = 26
          Caption = 'Access Password'#13#10'(8 Hex):'
        end
        object ComboBox_EPC4: TComboBox
          Tag = 3
          Left = 10
          Top = 17
          Width = 262
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object Edit_AccessCode4: TEdit
          Left = 97
          Top = 41
          Width = 175
          Height = 21
          MaxLength = 8
          TabOrder = 2
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object Button_SetReadProtect_G2: TButton
          Left = 9
          Top = 65
          Width = 264
          Height = 25
          Action = Action_SetReadProtect_G2
          Caption = 'Set Privacy By EPC'
          TabOrder = 1
        end
        object Button_SetMultiReadProtect_G2: TButton
          Left = 8
          Top = 93
          Width = 265
          Height = 25
          Action = Action_SetMultiReadProtect_G2
          Caption = 'Set Privacy Without EPC'
          TabOrder = 3
        end
        object Button_RemoveReadProtect_G2: TButton
          Left = 8
          Top = 121
          Width = 265
          Height = 25
          Action = Action_RemoveReadProtect_G2
          Caption = 'Reset Privacy'
          TabOrder = 4
        end
        object Button_CheckReadProtected_G2: TButton
          Left = 8
          Top = 149
          Width = 265
          Height = 25
          Action = Action_CheckReadProtected_G2
          Caption = 'Check Privacy'
          TabOrder = 5
        end
      end
      object GroupBox21: TGroupBox
        Left = 491
        Top = 442
        Width = 281
        Height = 116
        Caption = 'EAS Alarm'
        TabOrder = 5
        object Label35: TLabel
          Left = 9
          Top = 44
          Width = 84
          Height = 26
          Caption = 'Access Password'#13#10'(8 Hex):'
        end
        object SpeedButton_CheckAlarm_G2: TSpeedButton
          Left = 192
          Top = 82
          Width = 81
          Height = 25
          AllowAllUp = True
          GroupIndex = 3
          Caption = 'EAS Alarm'
          OnClick = SpeedButton_CheckAlarm_G2Click
        end
        object Label_Alarm: TLabel
          Left = 216
          Top = 43
          Width = 30
          Height = 30
          Caption = #9679
          Color = clBtnFace
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -30
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Button_SetEASAlarm_G2: TButton
          Left = 96
          Top = 82
          Width = 81
          Height = 25
          Action = Action_SetEASAlarm_G2
          Caption = 'EAS Configure'
          TabOrder = 3
        end
        object ComboBox_EPC5: TComboBox
          Tag = 3
          Left = 10
          Top = 18
          Width = 264
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object Edit_AccessCode5: TEdit
          Left = 97
          Top = 47
          Width = 76
          Height = 21
          MaxLength = 8
          TabOrder = 1
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object GroupBox24: TGroupBox
          Left = 10
          Top = 69
          Width = 79
          Height = 43
          TabOrder = 2
          object Alarm_G2: TRadioButton
            Left = 9
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Alarm'
            TabOrder = 0
          end
          object NoAlarm_G2: TRadioButton
            Left = 9
            Top = 24
            Width = 65
            Height = 17
            Caption = 'No Alarm'
            TabOrder = 1
          end
        end
      end
      object GroupBox22: TGroupBox
        Left = 491
        Top = 558
        Width = 281
        Height = 97
        Caption = 'Lock Block for User (Permanently Lock)'
        TabOrder = 6
        object Label36: TLabel
          Left = 10
          Top = 42
          Width = 98
          Height = 26
          Caption = 'Address of Tag Data'#13#10'(Word):'
        end
        object Label37: TLabel
          Left = 10
          Top = 68
          Width = 84
          Height = 26
          Caption = 'Access Password'#13#10'(8 Hex):'
        end
        object Button_LockUserBlock_G2: TButton
          Left = 188
          Top = 68
          Width = 81
          Height = 25
          Action = Action_LockUserBlock_G2
          Caption = 'Block Lock'
          TabOrder = 2
        end
        object ComboBox_BlockNum: TComboBox
          Left = 118
          Top = 42
          Width = 153
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object ComboBox_EPC6: TComboBox
          Tag = 3
          Left = 10
          Top = 16
          Width = 261
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object Edit_AccessCode6: TEdit
          Left = 103
          Top = 69
          Width = 76
          Height = 21
          MaxLength = 8
          TabOrder = 3
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 5
        Top = 410
        Width = 481
        Height = 175
        Caption = 'Set Protect For Reading Or Writing'
        TabOrder = 7
        object Label24: TLabel
          Left = 272
          Top = 133
          Width = 124
          Height = 13
          Caption = 'Access Password (8 Hex):'
        end
        object ComboBox_EPC1: TComboBox
          Tag = 1
          Left = 8
          Top = 18
          Width = 259
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object Button_SetProtectState: TButton
          Left = 382
          Top = 146
          Width = 92
          Height = 25
          Action = Action_SetProtectState
          Caption = 'Lock'
          TabOrder = 4
        end
        object Edit_AccessCode1: TEdit
          Left = 272
          Top = 148
          Width = 89
          Height = 21
          MaxLength = 8
          TabOrder = 5
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object GroupBox1: TGroupBox
          Left = 273
          Top = 10
          Width = 202
          Height = 31
          TabOrder = 0
          object P_Reserve: TRadioButton
            Left = 5
            Top = 8
            Width = 68
            Height = 17
            Caption = 'Password'
            TabOrder = 0
          end
          object P_EPC: TRadioButton
            Left = 72
            Top = 8
            Width = 45
            Height = 17
            Caption = 'EPC'
            TabOrder = 1
          end
          object P_TID: TRadioButton
            Left = 114
            Top = 8
            Width = 42
            Height = 17
            Caption = 'TID'
            TabOrder = 2
          end
          object P_User: TRadioButton
            Left = 152
            Top = 8
            Width = 48
            Height = 17
            Caption = 'User'
            TabOrder = 3
          end
        end
        object GroupBox16: TGroupBox
          Left = 8
          Top = 44
          Width = 257
          Height = 126
          Caption = 'Lock of Password'
          TabOrder = 2
          object GroupBox4: TGroupBox
            Left = 8
            Top = 12
            Width = 240
            Height = 41
            TabOrder = 0
            object DestroyCode: TRadioButton
              Left = 8
              Top = 14
              Width = 93
              Height = 17
              Caption = 'Kill Password'
              TabOrder = 0
            end
            object AccessCode: TRadioButton
              Left = 120
              Top = 14
              Width = 110
              Height = 17
              Caption = 'Access Password'
              TabOrder = 1
            end
          end
          object NoProect: TRadioButton
            Left = 4
            Top = 56
            Width = 231
            Height = 17
            Caption = 'Readable and  writeable from any state'
            TabOrder = 1
          end
          object Always: TRadioButton
            Left = 4
            Top = 88
            Width = 209
            Height = 17
            Caption = 'Permanently readable and writeable'
            TabOrder = 3
          end
          object Proect: TRadioButton
            Left = 4
            Top = 72
            Width = 221
            Height = 17
            Caption = 'Readable and writeable from the secured state'
            TabOrder = 2
          end
          object AlwaysNot: TRadioButton
            Left = 4
            Top = 106
            Width = 207
            Height = 17
            Caption = 'Never readable and writeable'
            TabOrder = 4
          end
        end
        object GroupBox18: TGroupBox
          Left = 272
          Top = 44
          Width = 202
          Height = 86
          Caption = 'Lock of EPC TID and User Bank'
          TabOrder = 3
          object NoProect2: TRadioButton
            Left = 8
            Top = 14
            Width = 129
            Height = 17
            Caption = 'Writeable from any state'
            TabOrder = 0
          end
          object AlwaysNot2: TRadioButton
            Left = 8
            Top = 64
            Width = 113
            Height = 17
            Caption = 'Never writeable'
            TabOrder = 3
          end
          object Proect2: TRadioButton
            Left = 8
            Top = 30
            Width = 137
            Height = 17
            Caption = 'Writeable from the secured state'
            TabOrder = 1
          end
          object Always2: TRadioButton
            Left = 8
            Top = 47
            Width = 113
            Height = 17
            Caption = 'Permanently writeable'
            TabOrder = 2
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 6
        Top = 209
        Width = 481
        Height = 199
        Caption = 'Read Data / Write Data / Block Erase'
        TabOrder = 8
        object Label9: TLabel
          Left = 8
          Top = 117
          Width = 140
          Height = 26
          Caption = 'Password(Read/Block Erase)'#13#10'(0-120/Word/D):'
        end
        object Label18: TLabel
          Left = 8
          Top = 147
          Width = 82
          Height = 13
          Caption = 'Write Data (Hex):'
        end
        object Label19: TLabel
          Left = 9
          Top = 74
          Width = 157
          Height = 13
          Caption = 'Address of Tag Data(Word/Hex):'
        end
        object Label20: TLabel
          Left = 11
          Top = 100
          Width = 165
          Height = 13
          Caption = 'Length of Data(Read/Block Erase:'
        end
        object SpeedButton_Read_G2: TSpeedButton
          Left = 6
          Top = 169
          Width = 47
          Height = 25
          AllowAllUp = True
          GroupIndex = 5
          Caption = 'Read'
          OnClick = SpeedButton_Read_G2Click
        end
        object ComboBox_EPC2: TComboBox
          Tag = 2
          Left = 8
          Top = 16
          Width = 298
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object Edit_AccessCode2: TEdit
          Left = 156
          Top = 120
          Width = 146
          Height = 21
          MaxLength = 8
          TabOrder = 5
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object Edit_WriteData: TEdit
          Left = 100
          Top = 144
          Width = 201
          Height = 21
          TabOrder = 6
          Text = '0000'
          OnChange = Edit_WriteDataChange
          OnKeyPress = Edit2KeyPress
        end
        object Edit_WordPtr: TEdit
          Left = 185
          Top = 73
          Width = 117
          Height = 21
          MaxLength = 4
          TabOrder = 3
          Text = '0000'
          OnKeyPress = Edit2KeyPress
        end
        object Edit_Len: TEdit
          Left = 183
          Top = 96
          Width = 119
          Height = 21
          MaxLength = 3
          TabOrder = 4
          Text = '4'
          OnKeyPress = Edit8KeyPress
        end
        object Memo_DataShow: TMemo
          Left = 312
          Top = 40
          Width = 161
          Height = 125
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 36
          Width = 296
          Height = 33
          TabOrder = 2
          object C_Reserve: TRadioButton
            Left = 2
            Top = 10
            Width = 65
            Height = 17
            Caption = 'Password'
            TabOrder = 0
            OnClick = C_ReserveClick
          end
          object C_EPC: TRadioButton
            Left = 76
            Top = 10
            Width = 49
            Height = 17
            Caption = 'EPC'
            TabOrder = 1
            OnClick = C_EPCClick
          end
          object C_TID: TRadioButton
            Left = 137
            Top = 10
            Width = 51
            Height = 17
            Caption = 'TID'
            TabOrder = 2
            OnClick = C_TIDClick
          end
          object C_User: TRadioButton
            Left = 195
            Top = 10
            Width = 60
            Height = 17
            Caption = 'User'
            TabOrder = 3
            OnClick = C_UserClick
          end
        end
        object Button16: TButton
          Left = 251
          Top = 169
          Width = 61
          Height = 25
          Caption = 'Clear'
          TabOrder = 9
          OnClick = Button16Click
        end
        object Button_DataWrite: TButton
          Left = 59
          Top = 169
          Width = 45
          Height = 25
          Action = Action_ShowOrChangeData_write
          Caption = 'Write'
          TabOrder = 7
        end
        object Button_BlockErase: TButton
          Left = 179
          Top = 169
          Width = 66
          Height = 25
          Action = Action_ShowOrChangeData_BlockErase
          Caption = 'Block Erase'
          TabOrder = 8
        end
        object Button_BlockWrite: TButton
          Left = 108
          Top = 169
          Width = 66
          Height = 25
          Action = Action_ShowOrChangeData_BlockWrite
          Caption = 'Block Write'
          TabOrder = 10
        end
        object Edit_PC: TEdit
          Left = 438
          Top = 12
          Width = 35
          Height = 21
          Color = clScrollBar
          ReadOnly = True
          TabOrder = 11
          Text = '0800'
        end
        object CheckBox18: TCheckBox
          Left = 312
          Top = 16
          Width = 123
          Height = 17
          Caption = 'Compute and add PC: '
          TabOrder = 12
          OnClick = CheckBox18Click
        end
        object ExtRead: TButton
          Left = 316
          Top = 169
          Width = 75
          Height = 25
          Caption = 'Ext Read'
          TabOrder = 13
          OnClick = ExtReadClick
        end
        object ExtWrite: TButton
          Left = 396
          Top = 168
          Width = 75
          Height = 25
          Caption = 'Ext Write'
          TabOrder = 14
          OnClick = ExtWriteClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Buffer Option'
      ImageIndex = 4
      object Label26: TLabel
        Left = 3
        Top = 96
        Width = 50
        Height = 13
        Caption = 'Tag List'#65306
      end
      object GroupBox15: TGroupBox
        Left = 3
        Top = 1
        Width = 246
        Height = 84
        TabOrder = 0
        object btStartBuffer: TButton
          Left = 16
          Top = 24
          Width = 153
          Height = 41
          Caption = 'Start'
          TabOrder = 0
          OnClick = btStartBufferClick
        end
        object rb_BEPC: TRadioButton
          Left = 184
          Top = 24
          Width = 57
          Height = 17
          Caption = 'EPC'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object rb_BTID: TRadioButton
          Left = 184
          Top = 48
          Width = 56
          Height = 17
          Caption = 'TID'
          TabOrder = 2
        end
      end
      object GroupBox25: TGroupBox
        Left = 247
        Top = 0
        Width = 224
        Height = 85
        TabOrder = 1
        object Label23: TLabel
          Left = 16
          Top = 14
          Width = 71
          Height = 13
          Caption = 'Tag Number'#65306
        end
        object lb_Num: TLabel
          Left = 16
          Top = 35
          Width = 193
          Height = 37
          Alignment = taRightJustify
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = '0'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
        end
      end
      object GroupBox26: TGroupBox
        Left = 469
        Top = -2
        Width = 304
        Height = 87
        TabOrder = 2
        object btGetBuffer: TButton
          Left = 16
          Top = 19
          Width = 132
          Height = 25
          Caption = 'Read buffer'
          TabOrder = 0
          OnClick = btGetBufferClick
        end
        object btGetAndClBuffer: TButton
          Left = 160
          Top = 19
          Width = 132
          Height = 25
          Caption = 'Read and Clear buffer'
          TabOrder = 1
          OnClick = btGetAndClBufferClick
        end
        object btClearBuffer: TButton
          Left = 16
          Top = 52
          Width = 132
          Height = 25
          Caption = 'Clear buffer'
          TabOrder = 2
          OnClick = btClearBufferClick
        end
        object btGetBufferNum: TButton
          Left = 160
          Top = 52
          Width = 132
          Height = 25
          Caption = 'Read buffer tag number'
          TabOrder = 3
          OnClick = btGetBufferNumClick
        end
      end
      object btClear: TButton
        Left = 631
        Top = 88
        Width = 129
        Height = 25
        Caption = 'Clear'
        TabOrder = 3
        OnClick = btClearClick
      end
      object ListView1: TListView
        Left = 1
        Top = 115
        Width = 774
        Height = 536
        Columns = <
          item
            Caption = 'No.'
            Width = 70
          end
          item
            Caption = 'EPC/TID'
            Width = 360
          end
          item
            Alignment = taCenter
            Caption = 'Length'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'Antenna'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'RSSI'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'Times'
            Width = 80
          end>
        GridLines = True
        TabOrder = 4
        ViewStyle = vsReport
      end
    end
    object TabSheet_6B: TTabSheet
      Caption = '18000-6B Test'
      ImageIndex = 5
      object GroupBox14: TGroupBox
        Left = 4
        Top = 4
        Width = 769
        Height = 309
        Caption = 'List ID of Tags'
        TabOrder = 0
        object ListView_ID_6B: TListView
          Left = 8
          Top = 16
          Width = 750
          Height = 282
          Columns = <
            item
              Caption = 'No.'
            end
            item
              Caption = 'ID'
              Width = 450
            end
            item
              Caption = 'ANT(4,3,2,1)'
              Width = 100
            end
            item
              Caption = 'Times'
            end
            item
              Caption = 'RSSI'
            end>
          GridLines = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
      object GroupBox19: TGroupBox
        Left = 4
        Top = 316
        Width = 321
        Height = 132
        Caption = 'Query Tag'
        TabOrder = 1
        object Label31: TLabel
          Left = 8
          Top = 30
          Width = 67
          Height = 13
          Caption = 'Read Interval:'
        end
        object SpeedButton_Query_6B: TSpeedButton
          Left = 221
          Top = 79
          Width = 89
          Height = 26
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'Query by one'
          OnClick = Action_Query_6BExecute
        end
        object ComboBox_IntervalTime_6B: TComboBox
          Left = 104
          Top = 25
          Width = 207
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
          OnChange = ComboBox_IntervalTime_6BChange
        end
        object Byone_6B: TRadioButton
          Left = 8
          Top = 70
          Width = 201
          Height = 17
          Caption = 'Query by one'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object Bycondition_6B: TRadioButton
          Left = 8
          Top = 98
          Width = 201
          Height = 17
          Caption = 'Query by Condition'
          TabOrder = 2
        end
      end
      object GroupBox32: TGroupBox
        Left = 332
        Top = 316
        Width = 441
        Height = 304
        Caption = 
          'Read and Write Data Block / Permanently Write  Protect Block of ' +
          ' byte'
        TabOrder = 2
        object Label34: TLabel
          Left = 9
          Top = 90
          Width = 165
          Height = 13
          Caption = 'Write Data (1-32 Byte/Hex):           '
        end
        object Label42: TLabel
          Left = 9
          Top = 49
          Width = 102
          Height = 26
          Caption = 'Start/Protect Address'#13#10'(00-E9)(Hex):   '
        end
        object Label43: TLabel
          Left = 242
          Top = 49
          Width = 75
          Height = 26
          Caption = 'Length of Data:'#13#10'(1-32/Byte/D)   '
        end
        object SpeedButton_Read_6B: TSpeedButton
          Left = 8
          Top = 117
          Width = 49
          Height = 25
          AllowAllUp = True
          GroupIndex = 5
          Caption = 'Read'
          OnClick = SpeedButton_Read_6BClick
        end
        object SpeedButton_Write_6B: TSpeedButton
          Left = 66
          Top = 117
          Width = 49
          Height = 25
          AllowAllUp = True
          GroupIndex = 5
          Caption = 'Write'
          OnClick = SpeedButton_Read_6BClick
        end
        object ComboBox_ID1_6B: TComboBox
          Tag = 2
          Left = 9
          Top = 20
          Width = 422
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object Edit_WriteData_6B: TEdit
          Left = 160
          Top = 85
          Width = 269
          Height = 21
          TabOrder = 3
          Text = '0000'
          OnKeyPress = Edit2KeyPress
        end
        object Edit_StartAddress_6B: TEdit
          Left = 115
          Top = 54
          Width = 81
          Height = 21
          MaxLength = 2
          TabOrder = 1
          Text = '00'
          OnKeyPress = Edit2KeyPress
        end
        object Edit_Len_6B: TEdit
          Left = 320
          Top = 54
          Width = 109
          Height = 21
          MaxLength = 2
          TabOrder = 2
          Text = '12'
          OnKeyPress = Edit8KeyPress
        end
        object Memo_DataShow_6B: TMemo
          Left = 8
          Top = 152
          Width = 420
          Height = 143
          ScrollBars = ssVertical
          TabOrder = 7
        end
        object Button7: TButton
          Left = 123
          Top = 117
          Width = 102
          Height = 25
          Action = Action_LockByte_6B
          TabOrder = 4
        end
        object Button10: TButton
          Left = 235
          Top = 117
          Width = 126
          Height = 25
          Action = Action_CheckLock_6B
          TabOrder = 5
        end
        object Button11: TButton
          Left = 368
          Top = 117
          Width = 60
          Height = 25
          Caption = 'Clear'
          TabOrder = 6
          OnClick = Button11Click
        end
      end
      object GroupBox33: TGroupBox
        Left = 4
        Top = 452
        Width = 321
        Height = 168
        Caption = 'Query Tags by Condition'
        TabOrder = 3
        object Label51: TLabel
          Left = 8
          Top = 132
          Width = 133
          Height = 13
          Caption = 'Condition(<=8 Hex Number):'
        end
        object Label52: TLabel
          Left = 8
          Top = 92
          Width = 134
          Height = 13
          Caption = 'Address of Tag Data(0-223):'
        end
        object Edit_Query_StartAddress_6B: TEdit
          Left = 160
          Top = 87
          Width = 97
          Height = 21
          MaxLength = 3
          TabOrder = 4
          Text = '0'
          OnKeyPress = Edit8KeyPress
        end
        object Edit_ConditionContent_6B: TEdit
          Left = 160
          Top = 124
          Width = 97
          Height = 21
          MaxLength = 16
          TabOrder = 5
          Text = '00'
          OnKeyPress = Edit2KeyPress
        end
        object Less_6B: TRadioButton
          Left = 8
          Top = 56
          Width = 145
          Height = 17
          Caption = 'Less than Condition'
          TabOrder = 2
        end
        object Different_6B: TRadioButton
          Left = 160
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Unequal Condition'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object Same_6B: TRadioButton
          Left = 8
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Equal Condition'
          TabOrder = 0
        end
        object Greater_6B: TRadioButton
          Left = 160
          Top = 56
          Width = 145
          Height = 17
          Caption = 'Greater than Condition'
          TabOrder = 3
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Frequency Analysis'
      ImageIndex = 4
      object Label62: TLabel
        Left = 42
        Top = 11
        Width = 71
        Height = 13
        AutoSize = False
        Caption = 'Frequency'
      end
      object Label63: TLabel
        Left = 204
        Top = 11
        Width = 121
        Height = 13
        AutoSize = False
        Caption = 'Times'
      end
      object Label64: TLabel
        Left = 388
        Top = 11
        Width = 55
        Height = 13
        Caption = 'Percentage'
      end
      object ListBox1: TListBox
        Left = 12
        Top = 27
        Width = 761
        Height = 561
        BiDiMode = bdLeftToRight
        Color = clBtnHighlight
        Ctl3D = False
        ExtendedSelect = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier'
        Font.Style = []
        ItemHeight = 13
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object Button21: TButton
        Left = 509
        Top = 594
        Width = 75
        Height = 25
        Caption = 'Start'
        Enabled = False
        TabOrder = 1
        OnClick = Button21Click
      end
      object Button23: TButton
        Left = 600
        Top = 594
        Width = 75
        Height = 25
        Caption = 'Stop'
        Enabled = False
        TabOrder = 2
        OnClick = Button23Click
      end
      object Button24: TButton
        Left = 688
        Top = 594
        Width = 75
        Height = 25
        Caption = 'Clear'
        TabOrder = 3
        OnClick = Button24Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 685
    Width = 785
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 600
      end
      item
        Text = 'Port'
        Width = 56
      end
      item
        Text = 'statusManufacturer nameBarPanel1'
        Width = 200
      end>
  end
  object ActionList1: TActionList
    Left = 99
    Top = 18
    object Action_GetReaderInformation: TAction
      Tag = 1
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #33719#24471#35835#20889#22120#20449#24687
      OnExecute = Action_GetReaderInformationExecute
      OnUpdate = Action_GetReaderInformationUpdate
    end
    object Action_OpenCOM: TAction
      Category = #36890#35759
      Caption = #25171#24320#31471#21475
    end
    object Action_OpenRf: TAction
      Tag = 1
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #25171#24320#23556#39057
    end
    object Action_CloseCOM: TAction
      Category = #36890#35759
      Caption = #20851#38381#31471#21475
    end
    object Action_CloseRf: TAction
      Tag = 1
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #20851#38381#23556#39057
    end
    object Action_WriteComAdr: TAction
      Tag = 1
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #20889#20837#35835#20889#22120#22320#22336
    end
    object Action_WriteInventoryScanTime: TAction
      Tag = 1
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #20889#20837
      Hint = #20889#20837#35810#26597#21629#20196#26368#22823#21709#24212#26102#38388
    end
    object Action_OpenTestMode: TAction
      Category = #27979#35797#27169#24335
      Caption = #26597#35810#26631#31614
    end
    object Action_CloseTestMode: TAction
      Category = #27979#35797#27169#24335
      Caption = #20851#38381#27979#35797#27169#24335
    end
    object Action_GetSystemInformation: TAction
      Tag = 2
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #33719#21462#30005#23376#26631#31614#35814#32454#20449#24687
    end
    object Action_SetReaderInformation: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #35774#32622#21442#25968
      OnExecute = Action_SetReaderInformationExecute
    end
    object Action_SetReaderInformation_0: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #24674#22797#20986#21378#21442#25968
      OnExecute = Action_SetReaderInformationExecute
    end
    object Action_Inventory: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = 'Action_Inventory'
      OnExecute = Action_InventoryExecute
    end
    object Action_ShowOrChangeData: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #35835
    end
    object Action_SetProtectState: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #35774#32622#20445#25252
      OnExecute = Action_SetProtectStateExecute
      OnUpdate = Action_SetProtectStateUpdate
    end
    object Action_DestroyCard: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #38144#27585
      OnExecute = Action_DestroyCardExecute
    end
    object Action_SelfTestMode: TAction
      Category = #27979#35797#27169#24335
      Caption = #36827#20837
    end
    object Action_SelfTestMode2: TAction
      Category = #27979#35797#27169#24335
      Caption = #36864#20986
    end
    object Action_RfOutput: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #25171#24320
    end
    object Action_RfOutput2: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #20851#38381
    end
    object Action_SetDAC: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #35843#25972'PWM'#20540
    end
    object Action_GetDAC: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #35835#21462'PWM'#37197#32622
    end
    object Action_SetPowerParameter: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #35774#23450#21151#29575#21442#25968
    end
    object Action_SolidifyPower: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #22266#21270#21151#29575#37197#32622
    end
    object Action_CheckPowerParameter: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #26816#27979#21151#29575#21442#25968#37197#32622
    end
    object Action_GetStartInformation: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #35835#21462#21551#21160#20449#24687
    end
    object Action_ReadPowerParameter: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #35835#21462#21151#29575#21442#25968
    end
    object Action_Inventroy_6B: TAction
      Category = '18000-6B'
      Caption = #26597#35810#26631#31614
      OnExecute = Action_Inventroy_6BExecute
    end
    object Action_Query_6B: TAction
      Category = '18000-6B'
      Caption = #26597#35810#26631#31614
      OnExecute = Action_Query_6BExecute
    end
    object Action_WriteData_6B: TAction
      Category = '18000-6B'
      Caption = #20889#25968#25454
    end
    object Action_ReadData_6B: TAction
      Category = '18000-6B'
      Caption = #35835#25968#25454
    end
    object Action_LockByte_6B: TAction
      Category = '18000-6B'
      Caption = 'Lock'
      OnExecute = Action_LockByte_6BExecute
    end
    object Action_CheckLock_6B: TAction
      Category = '18000-6B'
      Caption = 'Check Lock'
      OnExecute = Action_CheckLock_6BExecute
      OnUpdate = Action_CheckLock_6BUpdate
    end
    object Action_Query2_6B: TAction
      Category = '18000-6B'
      Caption = 'Action_Query2_6B'
    end
    object Action_ShowOrChangeData_write: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #20889
      OnExecute = Action_ShowOrChangeDataExecuteExecute
    end
    object Action_ShowOrChangeData_BlockErase: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #22359#25830#38500
      OnExecute = Action_ShowOrChangeDataExecuteExecute
    end
    object Action_SetReadProtect_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #35774#32622#21333#24352#35835#20445#25252
      OnExecute = Action_SetReadProtect_G2Execute
    end
    object Action_RemoveReadProtect_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #35299#38500#21333#24352#35835#20445#25252
      OnExecute = Action_RemoveReadProtect_G2Execute
    end
    object Action_SetMultiReadProtect_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #35774#32622#22810#24352#35835#20445#25252
      OnExecute = Action_SetMultiReadProtect_G2Execute
    end
    object Action_CheckReadProtected_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #26816#27979#21333#24352#34987#35835#20445#25252#65288#19981#38656#35201#21345#21495#23494#30721#65289'       '
      OnExecute = Action_CheckReadProtected_G2Execute
    end
    object Action_SetEASAlarm_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #35774#32622
      OnExecute = Action_SetEASAlarm_G2Execute
    end
    object Action_CheckEASAlarm_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #26816#27979
    end
    object Action_WriteEPC_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #20889'EPC'
      OnExecute = Action_WriteEPC_G2Execute
    end
    object Action_LockUserBlock_G2: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #38145#23450
      OnExecute = Action_LockUserBlock_G2Execute
    end
    object Action_WriteList: TAction
      Category = 'Inside'
      Caption = #21462#20540#20889#21442#25968
    end
    object Action_SolidifyPWMandPowerlist: TAction
      Category = 'Inside'
      Caption = #22266#21270'PWM'#20540#21644#21151#29575#34920
    end
    object Action_DeleteRfOutput: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #21024#38500#24378#21046'RF'#36755#20986
    end
    object Action_ShowOrChangeData_BlockWrite: TAction
      Category = #21345#29255#25805#20316'(TAG=2)'
      Caption = #22359#20889
      OnExecute = Action_ShowOrChangeDataExecuteExecute
    end
    object Action_TagProtocol: TAction
      Category = #20027#21160#27169#24335
      Caption = #35774#32622
    end
  end
  object Timer_Test_: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer_Test_Timer
    Left = 176
    Top = 18
  end
  object Timer_G2_Read: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer_G2_ReadTimer
    Left = 211
    Top = 18
  end
  object Timer_G2_Alarm: TTimer
    Interval = 200
    OnTimer = Timer_G2_AlarmTimer
    Left = 384
    Top = 18
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 338
    Top = 18
  end
  object Timer_Test_6B: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer_Test_6BTimer
    Left = 251
    Top = 18
  end
  object Timer_6B_ReadWrite: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer_6B_ReadWriteTimer
    Left = 290
    Top = 18
  end
  object MainMenu1: TMainMenu
    Left = 412
    Top = 24
    object Operation1: TMenuItem
      Caption = 'Operation'
      object Search1: TMenuItem
        Caption = 'Search'
      end
      object clear1: TMenuItem
        Caption = 'Clear'
      end
      object xxit1: TMenuItem
        Caption = 'Exit'
        OnClick = xxit1Click
      end
    end
    object tools1: TMenuItem
      Caption = 'tools'
      object IE1: TMenuItem
        Caption = 'IE'
      end
      object elnet1: TMenuItem
        Caption = 'Telnet'
      end
      object Ping1: TMenuItem
        Caption = 'Ping'
      end
    end
    object Language1: TMenuItem
      Caption = 'Language'
      object English1: TMenuItem
        Caption = 'English'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
end
