object frmUHFReader86main: TfrmUHFReader86main
  Left = 299
  Top = 89
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'UHFReader86'#28436#31034#36719#20214' V1.0'
  ClientHeight = 704
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
      Caption = #35835#20889#22120#21442#25968#35774#32622
      object GroupBox_ReaderInfo: TGroupBox
        Left = 136
        Top = 10
        Width = 633
        Height = 102
        Caption = #35835#20889#22120#20449#24687
        TabOrder = 0
        object Label2: TLabel
          Left = 162
          Top = 18
          Width = 36
          Height = 13
          Caption = #29256#26412#65306
        end
        object Label3: TLabel
          Left = 10
          Top = 47
          Width = 36
          Height = 13
          Caption = #22320#22336#65306
        end
        object Label4: TLabel
          Left = 328
          Top = 47
          Width = 132
          Height = 13
          Caption = #35810#26597#21629#20196#26368#22823#21709#24212#26102#38388#65306
        end
        object Label10: TLabel
          Left = 10
          Top = 18
          Width = 36
          Height = 13
          Caption = #22411#21495#65306
        end
        object Label11: TLabel
          Left = 328
          Top = 18
          Width = 60
          Height = 13
          Caption = #25903#25345#21327#35758#65306
        end
        object Label8: TLabel
          Left = 160
          Top = 47
          Width = 36
          Height = 13
          Caption = #21151#29575#65306
        end
        object Label13: TLabel
          Left = 160
          Top = 76
          Width = 60
          Height = 13
          Caption = #26368#39640#39057#29575#65306
        end
        object Label14: TLabel
          Left = 10
          Top = 76
          Width = 60
          Height = 13
          Caption = #26368#20302#39057#29575#65306
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
        Caption = #35774#32622#35835#20889#22120#21442#25968
        TabOrder = 1
        object Label15: TLabel
          Left = 8
          Top = 88
          Width = 60
          Height = 13
          Caption = #26368#20302#39057#29575#65306
        end
        object Label16: TLabel
          Left = 8
          Top = 119
          Width = 60
          Height = 13
          Caption = #26368#39640#39057#29575#65306
        end
        object Label17: TLabel
          Left = 202
          Top = 24
          Width = 48
          Height = 13
          Caption = #27874#29305#29575#65306
        end
        object Label1: TLabel
          Left = 8
          Top = 26
          Width = 64
          Height = 13
          Caption = #22320#22336'(HEX)'#65306
        end
        object Label7: TLabel
          Left = 8
          Top = 57
          Width = 36
          Height = 13
          Caption = #21151#29575#65306
        end
        object Label5: TLabel
          Left = 202
          Top = 57
          Width = 144
          Height = 13
          Caption = #35810#26597#21629#20196#26368#22823#21709#24212#26102#38388#65306'    '
        end
        object Button5: TButton
          Left = 344
          Top = 113
          Width = 129
          Height = 25
          Action = Action_SetReaderInformation
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
          OnKeyPress = Edit_WriteDataKeyPress
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
          Caption = #21333#39057#28857
          TabOrder = 5
          OnClick = CheckBox_SameFreClick
        end
        object GroupBox7: TGroupBox
          Left = 464
          Top = 11
          Width = 153
          Height = 96
          Caption = #39057#27573#36873#25321
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
            Top = 35
            Width = 113
            Height = 17
            Caption = 'US band'
            TabOrder = 1
            OnClick = RadioButton_band3Click
          end
          object RadioButton_band4: TRadioButton
            Left = 8
            Top = 48
            Width = 113
            Height = 17
            Caption = 'Korean band'
            TabOrder = 2
            OnClick = RadioButton_band4Click
          end
          object RadioButton_band5: TRadioButton
            Left = 8
            Top = 65
            Width = 113
            Height = 17
            Caption = 'EU band'
            TabOrder = 3
            OnClick = RadioButton_band5Click
          end
        end
      end
      object GroupBox8: TGroupBox
        Left = 560
        Top = 267
        Width = 209
        Height = 42
        Caption = #34562#40483#22120#25805#20316
        TabOrder = 2
        object Radio_beepEn: TRadioButton
          Left = 8
          Top = 16
          Width = 49
          Height = 17
          Caption = #24320
          TabOrder = 0
        end
        object Radio_beepDis: TRadioButton
          Left = 59
          Top = 16
          Width = 49
          Height = 17
          Caption = #20851
          TabOrder = 1
        end
        object Button_Beep: TButton
          Left = 123
          Top = 11
          Width = 70
          Height = 25
          Caption = #35774#32622
          TabOrder = 2
          OnClick = Button_BeepClick
        end
      end
      object Group_Module: TGroupBox
        Left = 137
        Top = 264
        Width = 416
        Height = 47
        Caption = 'GPIO'#25805#20316
        TabOrder = 3
        object Button_SetGPIO: TButton
          Left = 253
          Top = 14
          Width = 70
          Height = 25
          Caption = #35774#32622
          TabOrder = 0
          OnClick = Button_SetGPIOClick
        end
        object Button_GetGPIO: TButton
          Left = 332
          Top = 14
          Width = 70
          Height = 25
          Caption = #35835#21462
          TabOrder = 1
          OnClick = Button_GetGPIOClick
        end
        object CheckBox2: TCheckBox
          Left = 123
          Top = 19
          Width = 49
          Height = 17
          Caption = 'GPO1'
          TabOrder = 2
        end
        object CheckBox3: TCheckBox
          Left = 183
          Top = 19
          Width = 49
          Height = 17
          Caption = 'GPO2'
          TabOrder = 3
        end
        object CheckBox4: TCheckBox
          Left = 7
          Top = 19
          Width = 43
          Height = 17
          Caption = 'GPI1'
          Enabled = False
          TabOrder = 4
        end
        object CheckBox5: TCheckBox
          Left = 63
          Top = 19
          Width = 43
          Height = 17
          Caption = 'GPI2'
          Enabled = False
          TabOrder = 5
        end
      end
      object GroupBox43: TGroupBox
        Left = 0
        Top = 10
        Width = 134
        Height = 178
        Caption = #36890#35759
        TabOrder = 4
        object GroupBox_COM: TGroupBox
          Left = 0
          Top = 0
          Width = 134
          Height = 178
          Caption = #20018#21475
          TabOrder = 0
          object Label6: TLabel
            Left = 12
            Top = 14
            Width = 36
            Height = 13
            Caption = #31471#21475#65306
          end
          object Label12: TLabel
            Left = 13
            Top = 115
            Width = 87
            Height = 13
            Caption = #24050#25171#24320#31471#21475#65306'     '
          end
          object Label49: TLabel
            Left = 13
            Top = 79
            Width = 48
            Height = 13
            Caption = #27874#29305#29575#65306
          end
          object ComboBox_COM: TComboBox
            Left = 40
            Top = 9
            Width = 81
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBox_COMChange
          end
          object Button2: TButton
            Left = 12
            Top = 55
            Width = 109
            Height = 22
            Caption = #25171#24320#31471#21475
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button4: TButton
            Left = 12
            Top = 152
            Width = 109
            Height = 21
            Caption = #20851#38381#31471#21475
            TabOrder = 5
            OnClick = Button4Click
          end
          object StaticText1: TStaticText
            Left = 13
            Top = 35
            Width = 64
            Height = 17
            Caption = #35835#20889#22120#22320#22336
            TabOrder = 2
          end
          object Edit_CmdComAddr: TEdit
            Left = 78
            Top = 32
            Width = 42
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 1
            Text = 'FF'
            OnKeyPress = Edit_WriteDataKeyPress
          end
          object ComboBox_AlreadyOpenCOM: TComboBox
            Left = 13
            Top = 129
            Width = 109
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 4
            OnCloseUp = ComboBox_AlreadyOpenCOMCloseUp
          end
          object ComboBox_baud2: TComboBox
            Left = 12
            Top = 93
            Width = 111
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
        Left = 0
        Top = 190
        Width = 132
        Height = 86
        Caption = #35835#20889#22120#24207#21015#21495
        TabOrder = 5
        object Edit15: TEdit
          Left = 9
          Top = 25
          Width = 115
          Height = 21
          TabOrder = 0
          OnKeyPress = Edit_WriteDataKeyPress
        end
        object Button8: TButton
          Left = 53
          Top = 52
          Width = 71
          Height = 25
          Caption = #33719#21462
          TabOrder = 1
          OnClick = Button8Click
        end
      end
      object GroupBox27: TGroupBox
        Left = 136
        Top = 314
        Width = 417
        Height = 63
        Caption = #32531#23384#30340'EPC/TID'#38271#24230
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
          Left = 256
          Top = 24
          Width = 68
          Height = 25
          Caption = #35774#32622
          TabOrder = 2
          OnClick = bt_setlenClick
        end
        object bt_getlen: TButton
          Left = 336
          Top = 24
          Width = 68
          Height = 25
          Caption = #35835#21462
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
        Caption = #21345#29255#26174#31034
        TabOrder = 0
        object Label79: TLabel
          Left = 11
          Top = 18
          Width = 117
          Height = 13
          Caption = #24403#21069#35835#21462#21040#30340'EPC'#21495#65306
        end
        object Label81: TLabel
          Left = 305
          Top = 26
          Width = 60
          Height = 13
          Caption = #26631#31614#24635#25968#65306
        end
        object ListView_EPC: TListView
          Left = 32
          Top = 53
          Width = 465
          Height = 137
          Columns = <
            item
              Caption = #24207#21495
            end
            item
              Caption = #21345#21495
              Width = 160
            end
            item
              Caption = 'EPC'#38271#24230
              Width = 60
            end
            item
              Caption = #22825#32447'(4,3,2,1)'
              Width = 80
            end
            item
              Caption = #27425#25968
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
        Left = 497
        Top = 0
        Width = 281
        Height = 261
        Caption = #23547#21345
        TabOrder = 1
        object Label25: TLabel
          Left = 154
          Top = 16
          Width = 60
          Height = 13
          Caption = #35835#21345#38388#38548#65306
        end
        object SpeedButton_Query: TSpeedButton
          Left = 207
          Top = 228
          Width = 66
          Height = 25
          AllowAllUp = True
          GroupIndex = 1
          Caption = #26597#35810#26631#31614
          OnClick = SpeedButton_QueryClick
        end
        object Label102: TLabel
          Left = 9
          Top = 234
          Width = 32
          Height = 13
          Caption = 'Q'#20540#65306
        end
        object Label103: TLabel
          Left = 89
          Top = 235
          Width = 61
          Height = 13
          Caption = 'Session'#20540#65306
        end
        object Label22: TLabel
          Left = 19
          Top = 212
          Width = 84
          Height = 13
          Caption = #26368#22823#35810#26597#26102#38388#65306
        end
        object ComboBox_IntervalTime: TComboBox
          Left = 217
          Top = 12
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
          OnChange = ComboBox_IntervalTimeChange
        end
        object GroupBox31: TGroupBox
          Left = 7
          Top = 31
          Width = 266
          Height = 38
          Caption = 'TID'#23547#26597#26465#20214
          TabOrder = 1
          object Label52: TLabel
            Left = 8
            Top = 14
            Width = 60
            Height = 13
            Caption = #36215#22987#22320#22336#65306
          end
          object Label65: TLabel
            Left = 128
            Top = 13
            Width = 60
            Height = 13
            Caption = #25968#25454#23383#25968#65306
          end
          object Edit6: TEdit
            Left = 77
            Top = 11
            Width = 42
            Height = 21
            Enabled = False
            MaxLength = 2
            TabOrder = 0
            Text = '02'
            OnKeyPress = Edit2KeyPress
          end
          object Edit11: TEdit
            Left = 197
            Top = 10
            Width = 42
            Height = 21
            Enabled = False
            MaxLength = 2
            TabOrder = 1
            Text = '04'
            OnKeyPress = Edit2KeyPress
          end
        end
        object CheckBox_TID: TCheckBox
          Left = 9
          Top = 15
          Width = 74
          Height = 17
          Caption = 'TID'#35810#26597
          TabOrder = 2
          OnClick = CheckBox_TIDClick
        end
        object CheckBox19: TCheckBox
          Left = 79
          Top = 15
          Width = 66
          Height = 17
          Caption = #25552#31034#38899
          TabOrder = 3
        end
        object Com_Q: TComboBox
          Left = 36
          Top = 231
          Width = 47
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 4
        end
        object Com_S: TComboBox
          Left = 156
          Top = 231
          Width = 45
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 5
        end
        object GroupBox32: TGroupBox
          Left = 3
          Top = 74
          Width = 272
          Height = 128
          Caption = #25513#27169#35774#32622
          TabOrder = 6
          object Label42: TLabel
            Left = 8
            Top = 16
            Width = 121
            Height = 13
            Caption = #25513#30721#36215#22987#20301#22320#22336'(Hex)'#65306
          end
          object Label43: TLabel
            Left = 16
            Top = 81
            Width = 97
            Height = 13
            Caption = #25513#30721#20301#38271#24230'(Hex)'#65306
          end
          object Label21: TLabel
            Left = 16
            Top = 104
            Width = 85
            Height = 13
            Caption = #25513#30721#25968#25454'(Hex)'#65306
          end
          object CheckBox1: TCheckBox
            Left = 207
            Top = 9
            Width = 66
            Height = 17
            Caption = #20351#33021
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 139
            Top = 9
            Width = 61
            Height = 21
            MaxLength = 4
            TabOrder = 1
            Text = '0000'
            OnKeyPress = Edit2KeyPress
          end
          object Edit3: TEdit
            Left = 116
            Top = 73
            Width = 149
            Height = 21
            MaxLength = 2
            TabOrder = 2
            Text = '00'
            OnKeyPress = Edit2KeyPress
          end
          object GroupBox3: TGroupBox
            Left = 7
            Top = 28
            Width = 256
            Height = 35
            Caption = #25513#30721#21306
            TabOrder = 3
            object R_EPC: TRadioButton
              Left = 7
              Top = 14
              Width = 57
              Height = 17
              Caption = 'EPC'#21306
              TabOrder = 0
            end
            object R_TID: TRadioButton
              Left = 87
              Top = 14
              Width = 56
              Height = 17
              Caption = 'TID'#21306
              TabOrder = 1
            end
            object R_User: TRadioButton
              Left = 156
              Top = 14
              Width = 65
              Height = 17
              Caption = #29992#25143#21306
              TabOrder = 2
            end
          end
          object Edit1: TEdit
            Left = 104
            Top = 98
            Width = 161
            Height = 21
            TabOrder = 4
            Text = '00'
            OnKeyPress = Edit2KeyPress
          end
        end
        object ComboBox1: TComboBox
          Left = 114
          Top = 206
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 7
        end
      end
      object GroupBox9: TGroupBox
        Left = 6
        Top = 582
        Width = 237
        Height = 73
        Caption = #38144#27585#26631#31614
        TabOrder = 2
        object Label33: TLabel
          Left = 9
          Top = 40
          Width = 72
          Height = 26
          Caption = #38144#27585#23494#30721#65306#13#10'(8'#20010'16'#36827#21046#25968')'
        end
        object Button_DestroyCard: TButton
          Left = 175
          Top = 44
          Width = 57
          Height = 23
          Action = Action_DestroyCard
          TabOrder = 2
        end
        object Edit_DestroyCode: TEdit
          Left = 93
          Top = 44
          Width = 76
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
          Width = 223
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
      end
      object GroupBox23: TGroupBox
        Left = 248
        Top = 581
        Width = 242
        Height = 75
        Caption = #20889'EPC'#21495#65288#21482#25913#20889#22825#32447#33539#22260#20869#26576#19968#24352#26631#31614#65289
        TabOrder = 3
        object Label38: TLabel
          Left = 9
          Top = 42
          Width = 72
          Height = 26
          Caption = #35775#38382#23494#30721#65306#13#10'(8'#20010'16'#36827#21046#25968')'
        end
        object Label39: TLabel
          Left = 8
          Top = 16
          Width = 48
          Height = 26
          Caption = #20889'EPC'#21495':'#13#10'(1-15'#23383')'
        end
        object Edit_AccessCode3: TEdit
          Left = 93
          Top = 47
          Width = 76
          Height = 21
          MaxLength = 8
          TabOrder = 2
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object Button_WriteEPC_G2: TButton
          Left = 176
          Top = 45
          Width = 58
          Height = 25
          Action = Action_WriteEPC_G2
          TabOrder = 1
        end
        object Edit_WriteEPC: TEdit
          Left = 61
          Top = 17
          Width = 173
          Height = 21
          MaxLength = 128
          TabOrder = 0
          Text = '0000'
          OnKeyPress = Edit2KeyPress
        end
      end
      object GroupBox20: TGroupBox
        Left = 497
        Top = 263
        Width = 281
        Height = 186
        Caption = #35835#20445#25252
        TabOrder = 4
        object Label32: TLabel
          Left = 9
          Top = 38
          Width = 72
          Height = 26
          Caption = #35775#38382#23494#30721#65306#13#10'(8'#20010'16'#36827#21046#25968')'
        end
        object ComboBox_EPC4: TComboBox
          Tag = 3
          Left = 10
          Top = 15
          Width = 261
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object Edit_AccessCode4: TEdit
          Left = 93
          Top = 42
          Width = 76
          Height = 21
          MaxLength = 8
          TabOrder = 2
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object Button_SetReadProtect_G2: TButton
          Left = 10
          Top = 70
          Width = 263
          Height = 25
          Action = Action_SetReadProtect_G2
          TabOrder = 1
        end
        object Button_SetMultiReadProtect_G2: TButton
          Left = 8
          Top = 100
          Width = 265
          Height = 25
          Action = Action_SetMultiReadProtect_G2
          TabOrder = 3
        end
        object Button_RemoveReadProtect_G2: TButton
          Left = 8
          Top = 128
          Width = 265
          Height = 25
          Action = Action_RemoveReadProtect_G2
          TabOrder = 4
        end
        object Button_CheckReadProtected_G2: TButton
          Left = 8
          Top = 156
          Width = 265
          Height = 25
          Action = Action_CheckReadProtected_G2
          TabOrder = 5
        end
      end
      object GroupBox21: TGroupBox
        Left = 497
        Top = 453
        Width = 281
        Height = 111
        Caption = 'EAS'#25253#35686
        TabOrder = 5
        object Label35: TLabel
          Left = 9
          Top = 37
          Width = 72
          Height = 26
          Caption = #35775#38382#23494#30721#65306#13#10'(8'#20010'16'#36827#21046#25968')'
        end
        object SpeedButton_CheckAlarm_G2: TSpeedButton
          Left = 192
          Top = 75
          Width = 81
          Height = 25
          AllowAllUp = True
          GroupIndex = 3
          Caption = #26816#27979
          OnClick = SpeedButton_CheckAlarm_G2Click
        end
        object Label_Alarm: TLabel
          Left = 216
          Top = 37
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
          Top = 75
          Width = 81
          Height = 25
          Caption = #35774#32622
          TabOrder = 3
          OnClick = Action_SetEASAlarm_G2Execute
        end
        object ComboBox_EPC5: TComboBox
          Tag = 3
          Left = 10
          Top = 14
          Width = 264
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object Edit_AccessCode5: TEdit
          Left = 93
          Top = 40
          Width = 76
          Height = 21
          MaxLength = 8
          TabOrder = 1
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object GroupBox24: TGroupBox
          Left = 10
          Top = 62
          Width = 79
          Height = 43
          TabOrder = 2
          object Alarm_G2: TRadioButton
            Left = 9
            Top = 8
            Width = 57
            Height = 17
            Caption = #25253#35686
            TabOrder = 0
          end
          object NoAlarm_G2: TRadioButton
            Left = 9
            Top = 24
            Width = 65
            Height = 17
            Caption = #19981#25253#35686
            TabOrder = 1
          end
        end
      end
      object GroupBox22: TGroupBox
        Left = 497
        Top = 567
        Width = 281
        Height = 89
        Caption = #38145#23450#29992#25143#21306#25968#25454#22359#38145#65288#27704#20037#38145#23450#65289
        TabOrder = 6
        object Label36: TLabel
          Left = 10
          Top = 43
          Width = 84
          Height = 13
          Caption = #25968#25454#22359#23383#22320#22336#65306
        end
        object Label37: TLabel
          Left = 10
          Top = 58
          Width = 72
          Height = 26
          Caption = #35775#38382#23494#30721#65306#13#10'(8'#20010'16'#36827#21046#25968')'
        end
        object Button_LockUserBlock_G2: TButton
          Left = 192
          Top = 60
          Width = 81
          Height = 25
          Caption = #38145#23450
          TabOrder = 2
          OnClick = Action_LockUserBlock_G2Execute
        end
        object ComboBox_BlockNum: TComboBox
          Left = 93
          Top = 39
          Width = 81
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
          Left = 93
          Top = 63
          Width = 76
          Height = 21
          MaxLength = 8
          TabOrder = 3
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 405
        Width = 481
        Height = 175
        Caption = #35774#32622#35835#20889#20445#25252#29366#24577
        TabOrder = 7
        object Label24: TLabel
          Left = 224
          Top = 133
          Width = 132
          Height = 13
          Caption = #35775#38382#23494#30721#65306'(8'#20010'16'#36827#21046#25968')'
        end
        object ComboBox_EPC1: TComboBox
          Tag = 1
          Left = 8
          Top = 18
          Width = 209
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object Button_SetProtectState: TButton
          Left = 368
          Top = 144
          Width = 97
          Height = 25
          Action = Action_SetProtectState
          TabOrder = 4
        end
        object Edit_AccessCode1: TEdit
          Left = 224
          Top = 148
          Width = 89
          Height = 21
          MaxLength = 8
          TabOrder = 5
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object GroupBox1: TGroupBox
          Left = 224
          Top = 10
          Width = 250
          Height = 31
          TabOrder = 0
          object P_Reserve: TRadioButton
            Left = 8
            Top = 8
            Width = 61
            Height = 17
            Caption = #20445#30041#21306
            TabOrder = 0
          end
          object P_EPC: TRadioButton
            Left = 72
            Top = 8
            Width = 54
            Height = 17
            Caption = 'EPC'#21306
            TabOrder = 1
          end
          object P_TID: TRadioButton
            Left = 128
            Top = 8
            Width = 53
            Height = 17
            Caption = 'TID'#21306
            TabOrder = 2
          end
          object P_User: TRadioButton
            Left = 184
            Top = 8
            Width = 62
            Height = 17
            Caption = #29992#25143#21306
            TabOrder = 3
          end
        end
        object GroupBox16: TGroupBox
          Left = 8
          Top = 44
          Width = 208
          Height = 126
          Caption = #23494#30721#21306#30340#35835#20889#20445#25252#31867#22411
          TabOrder = 2
          object GroupBox4: TGroupBox
            Left = 8
            Top = 12
            Width = 169
            Height = 41
            TabOrder = 0
            object DestroyCode: TRadioButton
              Left = 8
              Top = 14
              Width = 73
              Height = 17
              Caption = #38144#27585#23494#30721
              TabOrder = 0
            end
            object AccessCode: TRadioButton
              Left = 88
              Top = 14
              Width = 73
              Height = 17
              Caption = #35775#38382#23494#30721
              TabOrder = 1
            end
          end
          object NoProect: TRadioButton
            Left = 16
            Top = 56
            Width = 177
            Height = 17
            Caption = #26080#20445#25252#19979#30340#21487#35835#21487#20889
            TabOrder = 1
          end
          object Always: TRadioButton
            Left = 16
            Top = 88
            Width = 113
            Height = 17
            Caption = #27704#36828#21487#35835#21487#20889
            TabOrder = 3
          end
          object Proect: TRadioButton
            Left = 16
            Top = 71
            Width = 169
            Height = 17
            Caption = #23494#30721#20445#25252#19979#30340#21487#35835#21487#20889
            TabOrder = 2
          end
          object AlwaysNot: TRadioButton
            Left = 16
            Top = 106
            Width = 169
            Height = 17
            Caption = #27704#36828#19981#33021#35835#19981#33021#20889
            TabOrder = 4
          end
        end
        object GroupBox18: TGroupBox
          Left = 224
          Top = 44
          Width = 249
          Height = 86
          Caption = 'EPC-TID-'#29992#25143#21306#30340#20889#20445#25252#31867#22411
          TabOrder = 3
          object NoProect2: TRadioButton
            Left = 8
            Top = 14
            Width = 129
            Height = 17
            Caption = #26080#20445#25252#19979#30340#21487#20889
            TabOrder = 0
          end
          object AlwaysNot2: TRadioButton
            Left = 8
            Top = 64
            Width = 113
            Height = 17
            Caption = #27704#36828#19981#21487#20889
            TabOrder = 3
          end
          object Proect2: TRadioButton
            Left = 8
            Top = 30
            Width = 137
            Height = 17
            Caption = #23494#30721#20445#25252#19979#30340#21487#20889
            TabOrder = 1
          end
          object Always2: TRadioButton
            Left = 8
            Top = 47
            Width = 113
            Height = 17
            Caption = #27704#36828#21487#20889
            TabOrder = 2
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 8
        Top = 211
        Width = 481
        Height = 191
        Caption = #35835#25968#25454'/'#20889#25968#25454'/'#22359#25830#38500
        TabOrder = 8
        object Label9: TLabel
          Left = 8
          Top = 105
          Width = 132
          Height = 13
          Caption = #35775#38382#23494#30721#65306'(8'#20010'16'#36827#21046#25968')'
        end
        object Label18: TLabel
          Left = 8
          Top = 131
          Width = 90
          Height = 13
          Caption = #20889#25968#25454#65306'(16'#36827#21046')'
        end
        object Label19: TLabel
          Left = 8
          Top = 71
          Width = 71
          Height = 26
          Caption = #36215#22987#22320#22336':'#13#10'('#23383'/16'#36827#21046#25968')'
        end
        object Label20: TLabel
          Left = 125
          Top = 71
          Width = 103
          Height = 26
          Caption = #35835'/'#22359#25830#38500#38271#24230#65306#13#10'(0-120/'#23383'/10'#36827#21046#25968')'
        end
        object SpeedButton_Read_G2: TSpeedButton
          Left = 6
          Top = 154
          Width = 49
          Height = 25
          AllowAllUp = True
          GroupIndex = 5
          Caption = #35835
          OnClick = SpeedButton_Read_G2Click
        end
        object ComboBox_EPC2: TComboBox
          Tag = 2
          Left = 8
          Top = 16
          Width = 266
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object Edit_AccessCode2: TEdit
          Left = 152
          Top = 101
          Width = 121
          Height = 21
          MaxLength = 8
          TabOrder = 5
          Text = '00000000'
          OnKeyPress = Edit2KeyPress
        end
        object Edit_WriteData: TEdit
          Left = 112
          Top = 127
          Width = 161
          Height = 21
          TabOrder = 6
          Text = '0000'
          OnChange = Edit_WriteDataChange
          OnKeyPress = Edit_WriteDataKeyPress
        end
        object Edit_WordPtr: TEdit
          Left = 82
          Top = 76
          Width = 40
          Height = 21
          MaxLength = 4
          TabOrder = 3
          Text = '0000'
          OnKeyPress = Edit2KeyPress
        end
        object Edit_Len: TEdit
          Left = 229
          Top = 76
          Width = 43
          Height = 21
          MaxLength = 3
          TabOrder = 4
          Text = '4'
          OnKeyPress = Edit8KeyPress
        end
        object Memo_DataShow: TMemo
          Left = 279
          Top = 40
          Width = 194
          Height = 105
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 36
          Width = 265
          Height = 33
          TabOrder = 2
          object C_Reserve: TRadioButton
            Left = 2
            Top = 10
            Width = 65
            Height = 17
            Caption = #20445#30041#21306
            TabOrder = 0
            OnClick = C_ReserveClick
          end
          object C_EPC: TRadioButton
            Left = 67
            Top = 10
            Width = 57
            Height = 17
            Caption = 'EPC'#21306
            TabOrder = 1
            OnClick = C_EPCClick
          end
          object C_TID: TRadioButton
            Left = 131
            Top = 10
            Width = 56
            Height = 17
            Caption = 'TID'#21306
            TabOrder = 2
            OnClick = C_TIDClick
          end
          object C_User: TRadioButton
            Left = 192
            Top = 10
            Width = 65
            Height = 17
            Caption = #29992#25143#21306
            TabOrder = 3
            OnClick = C_UserClick
          end
        end
        object Button16: TButton
          Left = 239
          Top = 154
          Width = 65
          Height = 25
          Caption = #28165#38500#26174#31034
          TabOrder = 9
          OnClick = Button16Click
        end
        object Button_DataWrite: TButton
          Left = 60
          Top = 154
          Width = 47
          Height = 25
          Action = Action_ShowOrChangeData_write
          TabOrder = 7
        end
        object Button_BlockErase: TButton
          Left = 175
          Top = 154
          Width = 60
          Height = 25
          Action = Action_ShowOrChangeData_BlockErase
          TabOrder = 8
        end
        object Button_BlockWrite: TButton
          Left = 113
          Top = 154
          Width = 57
          Height = 25
          Action = Action_ShowOrChangeData_BlockWrite
          TabOrder = 10
        end
        object CheckBox18: TCheckBox
          Left = 280
          Top = 16
          Width = 137
          Height = 17
          Caption = #33258#21160#35745#31639#24182#28155#21152'PC'
          TabOrder = 11
          OnClick = CheckBox18Click
        end
        object Edit_PC: TEdit
          Left = 420
          Top = 12
          Width = 53
          Height = 21
          TabOrder = 12
          Text = '0800'
        end
        object ExtRead: TButton
          Left = 311
          Top = 154
          Width = 75
          Height = 25
          Caption = #25193#23637#35835
          TabOrder = 13
          OnClick = ExtReadClick
        end
        object ExtWrite: TButton
          Left = 392
          Top = 154
          Width = 75
          Height = 25
          Caption = #25193#23637#20889
          TabOrder = 14
          OnClick = ExtWriteClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #32531#23384#25805#20316
      ImageIndex = 4
      object Label26: TLabel
        Left = 3
        Top = 96
        Width = 60
        Height = 13
        Caption = #26631#31614#21015#34920#65306
      end
      object GroupBox12: TGroupBox
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
          Caption = #24320#22987#26597#35810
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
          Width = 120
          Height = 13
          Caption = #24050#26597#35810#21040#30340#26631#31614#24352#25968#65306
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
          Caption = #35835#21462#32531#23384
          TabOrder = 0
          OnClick = btGetBufferClick
        end
        object btGetAndClBuffer: TButton
          Left = 160
          Top = 19
          Width = 132
          Height = 25
          Caption = #35835#21462#24182#28165#31354#32531#23384
          TabOrder = 1
          OnClick = btGetAndClBufferClick
        end
        object btClearBuffer: TButton
          Left = 16
          Top = 52
          Width = 132
          Height = 25
          Caption = #28165#31354#32531#23384
          TabOrder = 2
          OnClick = btClearBufferClick
        end
        object btGetBufferNum: TButton
          Left = 160
          Top = 52
          Width = 132
          Height = 25
          Caption = #26597#35810#32531#23384#26631#31614#25968#37327
          TabOrder = 3
          OnClick = btGetBufferNumClick
        end
      end
      object ListView1: TListView
        Left = 1
        Top = 115
        Width = 774
        Height = 536
        Columns = <
          item
            Caption = #24207#21495
            Width = 70
          end
          item
            Caption = 'EPC/TID'
            Width = 360
          end
          item
            Alignment = taCenter
            Caption = #38271#24230
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = #22825#32447
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'RSSI'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = #27425#25968
            Width = 80
          end>
        GridLines = True
        TabOrder = 3
        ViewStyle = vsReport
      end
      object btClear: TButton
        Left = 631
        Top = 88
        Width = 129
        Height = 25
        Caption = #28165#31354
        TabOrder = 4
        OnClick = btClearClick
      end
    end
    object TabSheet_6B: TTabSheet
      Caption = '18000-6B Test'
      ImageIndex = 6
      object GroupBox13: TGroupBox
        Left = 5
        Top = 4
        Width = 769
        Height = 309
        Caption = #21345#29255#26174#31034
        TabOrder = 0
        object ListView_ID_6B: TListView
          Left = 8
          Top = 16
          Width = 750
          Height = 282
          Columns = <
            item
              Caption = #24207#21495
            end
            item
              Caption = #21345#21495
              Width = 450
            end
            item
              Caption = #22825#32447#21495'(4,3,2,1)'
              Width = 100
            end
            item
              Caption = #27425#25968
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
        Left = 5
        Top = 316
        Width = 321
        Height = 132
        Caption = #23547#21345
        TabOrder = 1
        object Label30: TLabel
          Left = 8
          Top = 30
          Width = 84
          Height = 13
          Caption = #35835#21345#38388#38548#26102#38388#65306
        end
        object SpeedButton_Query_6B: TSpeedButton
          Left = 221
          Top = 79
          Width = 89
          Height = 26
          AllowAllUp = True
          GroupIndex = 1
          Caption = #21333#24352#26597#35810
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
          Width = 73
          Height = 17
          Caption = #21333#24352#26597#35810
          TabOrder = 1
        end
        object Bycondition_6B: TRadioButton
          Left = 8
          Top = 98
          Width = 81
          Height = 17
          Caption = #26377#26465#20214#26597#35810
          TabOrder = 2
        end
      end
      object GroupBox14: TGroupBox
        Left = 5
        Top = 452
        Width = 321
        Height = 168
        Caption = #26597#35810#26465#20214
        TabOrder = 2
        object Label34: TLabel
          Left = 8
          Top = 132
          Width = 150
          Height = 13
          Caption = #26465#20214'(<=8'#20010'16'#36827#21046#25968')'#65306'          '
        end
        object Label31: TLabel
          Left = 8
          Top = 92
          Width = 156
          Height = 13
          Caption = #26631#31614#25968#25454#36215#22987#22320#22336'(0-233)'#65306'     '
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
          Width = 81
          Height = 17
          Caption = #23567#20110#26465#20214
          TabOrder = 2
        end
        object Different_6B: TRadioButton
          Left = 160
          Top = 24
          Width = 113
          Height = 17
          Caption = #19982#26465#20214#19981#21516
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object Same_6B: TRadioButton
          Left = 8
          Top = 24
          Width = 113
          Height = 17
          Caption = #19982#26465#20214#30456#21516
          TabOrder = 0
        end
        object Greater_6B: TRadioButton
          Left = 160
          Top = 56
          Width = 81
          Height = 17
          Caption = #22823#20110#26465#20214
          TabOrder = 3
        end
      end
      object GroupBox15: TGroupBox
        Left = 333
        Top = 316
        Width = 441
        Height = 304
        Caption = #35835#20889#25968#25454'/'#23383#33410#22359#27704#20037#20889#20445#25252
        TabOrder = 3
        object Label40: TLabel
          Left = 9
          Top = 90
          Width = 173
          Height = 13
          Caption = #20889#25968#25454#65306'(1-32'#23383#33410'/16'#36827#21046')           '
        end
        object Label41: TLabel
          Left = 9
          Top = 49
          Width = 101
          Height = 26
          Caption = #36215#22987'/'#20889#20445#25252#22320#22336#65306#13#10'(00-E9)(16'#36827#21046#25968')   '
        end
        object Label44: TLabel
          Left = 205
          Top = 49
          Width = 127
          Height = 26
          Caption = #25968#25454#38271#24230#65306#13#10'(1-32/'#23383#33410'/10'#36827#21046#25968')      '
        end
        object SpeedButton_Read_6B: TSpeedButton
          Left = 8
          Top = 117
          Width = 49
          Height = 25
          AllowAllUp = True
          GroupIndex = 5
          Caption = #35835#25968#25454
          OnClick = SpeedButton_Read_6BClick
        end
        object SpeedButton_Write_6B: TSpeedButton
          Left = 73
          Top = 117
          Width = 49
          Height = 25
          AllowAllUp = True
          GroupIndex = 5
          Caption = #20889#25968#25454
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
          Left = 108
          Top = 54
          Width = 88
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
        object Button10: TButton
          Left = 140
          Top = 117
          Width = 74
          Height = 25
          Action = Action_LockByte_6B
          TabOrder = 4
        end
        object Button11: TButton
          Left = 230
          Top = 117
          Width = 125
          Height = 25
          Action = Action_CheckLock_6B
          TabOrder = 5
        end
        object Button12: TButton
          Left = 368
          Top = 117
          Width = 60
          Height = 25
          Caption = #28165#38500#26174#31034
          TabOrder = 6
          OnClick = Button12Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #26631#31614#39057#28857#20998#26512
      ImageIndex = 4
      object Label62: TLabel
        Left = 42
        Top = 11
        Width = 43
        Height = 13
        AutoSize = False
        Caption = #39057#28857
      end
      object Label63: TLabel
        Left = 204
        Top = 11
        Width = 121
        Height = 13
        AutoSize = False
        Caption = #35835#21462#25104#21151#27425#25968
      end
      object Label64: TLabel
        Left = 388
        Top = 11
        Width = 84
        Height = 13
        Caption = #25104#21151#27425#25968#30334#20998#27604
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
        Caption = #20998#26512
        Enabled = False
        TabOrder = 1
        OnClick = Button21Click
      end
      object Button23: TButton
        Left = 600
        Top = 594
        Width = 75
        Height = 25
        Caption = #20572#27490
        Enabled = False
        TabOrder = 2
        OnClick = Button23Click
      end
      object Button24: TButton
        Left = 688
        Top = 594
        Width = 75
        Height = 25
        Caption = #28165#38500
        TabOrder = 3
        OnClick = Button24Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 685
    Width = 787
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 600
      end
      item
        Text = #20018#21475
        Width = 56
      end
      item
        Text = #21378#21830#21517#31216
        Width = 200
      end>
  end
  object Timer_Test_: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer_Test_Timer
    Left = 432
    Top = 2
  end
  object Timer_G2_Read: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer_G2_ReadTimer
    Left = 467
    Top = 2
  end
  object Timer_G2_Alarm: TTimer
    Interval = 200
    OnTimer = Timer_G2_AlarmTimer
    Left = 720
    Top = 2
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer1Timer
    Left = 586
    Top = 2
  end
  object Timer_Test_6B: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer_Test_6BTimer
    Left = 507
    Top = 10
  end
  object Timer_6B_ReadWrite: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer_6B_ReadWriteTimer
    Left = 546
    Top = 10
  end
  object MainMenu1: TMainMenu
    Left = 412
    Top = 16
    object Operation1: TMenuItem
      Caption = #25805#20316
      object Search1: TMenuItem
        Caption = #25628#32034
      end
      object clear1: TMenuItem
        Caption = #28165#38500
      end
      object xxit1: TMenuItem
        Caption = #36864#20986
      end
    end
    object tools1: TMenuItem
      Caption = #24037#20855
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
      Caption = #35821#35328
      object English1: TMenuItem
        Caption = 'English'
      end
    end
    object Help1: TMenuItem
      Caption = #24110#21161
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 50
    Left = 220
    Top = 24
  end
  object ActionList1: TActionList
    Left = 371
    Top = 10
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
      OnExecute = Action_RfOutputExecute
    end
    object Action_RfOutput2: TAction
      Category = #20018#21475#25171#24320#21363#21487#25191#34892'(TAG=1)'
      Caption = #20851#38381
      OnExecute = Action_RfOutputExecute
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
      Caption = #38145#23450
      OnExecute = Action_LockByte_6BExecute
    end
    object Action_CheckLock_6B: TAction
      Category = '18000-6B'
      Caption = #26816#27979#38145#23450
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
end
