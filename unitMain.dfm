object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 527
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Edit1: TEdit
    Left = 48
    Top = 80
    Width = 281
    Height = 39
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 51
    Top = 368
    Width = 65
    Height = 65
    Caption = '1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 122
    Top = 368
    Width = 65
    Height = 65
    Caption = '2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 193
    Top = 368
    Width = 65
    Height = 65
    Caption = '3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 51
    Top = 297
    Width = 65
    Height = 65
    Caption = '4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 122
    Top = 297
    Width = 65
    Height = 65
    Caption = '5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 193
    Top = 297
    Width = 65
    Height = 65
    Caption = '6'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 51
    Top = 226
    Width = 65
    Height = 65
    Caption = '7'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 122
    Top = 226
    Width = 65
    Height = 65
    Caption = '8'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 193
    Top = 226
    Width = 65
    Height = 65
    Caption = '9'
    TabOrder = 9
    OnClick = Button9Click
  end
  object buttonNum0: TButton
    Left = 51
    Top = 440
    Width = 136
    Height = 64
    Caption = '0'
    DisabledImageName = 'Button0'
    TabOrder = 10
    OnClick = buttonNum0Click
  end
  object buttonADD: TButton
    Left = 264
    Top = 226
    Width = 65
    Height = 65
    Caption = '+'
    TabOrder = 11
    OnClick = buttonADDClick
  end
  object buttonSUB: TButton
    Left = 264
    Top = 297
    Width = 65
    Height = 65
    Caption = '-'
    TabOrder = 12
    OnClick = buttonSUBClick
  end
  object buttonMPY: TButton
    Left = 264
    Top = 368
    Width = 65
    Height = 65
    Caption = '*'
    TabOrder = 13
    OnClick = buttonMPYClick
  end
  object buttonDIV: TButton
    Left = 264
    Top = 439
    Width = 65
    Height = 65
    Caption = '/'
    TabOrder = 14
    OnClick = buttonDIVClick
  end
  object buttonEQUAL: TButton
    Left = 51
    Top = 150
    Width = 65
    Height = 65
    Caption = '='
    TabOrder = 15
    OnClick = buttonEQUALClick
  end
  object buttonCE: TButton
    Left = 122
    Top = 150
    Width = 65
    Height = 65
    Caption = 'CE'
    TabOrder = 16
    OnClick = buttonCEClick
  end
  object buttonC: TButton
    Left = 193
    Top = 150
    Width = 65
    Height = 65
    Caption = 'C'
    TabOrder = 17
    OnClick = buttonCClick
  end
  object buttonBS: TButton
    Left = 264
    Top = 150
    Width = 65
    Height = 65
    Caption = '<-'
    TabOrder = 18
    OnClick = buttonBSClick
  end
  object Button10: TButton
    Left = 193
    Top = 439
    Width = 65
    Height = 65
    Caption = ','
    TabOrder = 19
    OnClick = Button10Click
  end
end
