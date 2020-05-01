object FormRadar: TFormRadar
  Left = 747
  Top = 444
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Radar'
  ClientHeight = 287
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ImgRadar: TImage
    Left = 0
    Top = 32
    Width = 255
    Height = 255
    Align = alCustom
  end
  object LblPeopleNumber: TLabel
    Left = 8
    Top = 8
    Width = 45
    Height = 13
    Caption = 'People: 0'
    Transparent = True
  end
  object CheckOnTop: TCheckBox
    Left = 192
    Top = 8
    Width = 57
    Height = 17
    Caption = 'On Top'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = CheckOnTopClick
  end
  object BtnZoomIn: TButton
    Left = 128
    Top = 0
    Width = 25
    Height = 25
    Action = ActionZoomIn
    TabOrder = 1
  end
  object BtnZoomOut: TButton
    Left = 160
    Top = 0
    Width = 25
    Height = 25
    Action = ActionZoomOut
    TabOrder = 2
  end
  object TimerRadarRefresh: TTimer
    Interval = 700
    OnTimer = TimerRadarRefreshTimer
    Left = 128
    Top = 56
  end
  object ActionManager1: TActionManager
    OnChange = ActionManager1Change
    Left = 160
    Top = 56
    StyleName = 'XP Style'
    object ActionZoomIn: TAction
      Caption = '+'
      ShortCut = 45
      OnExecute = ActionZoomInExecute
    end
    object ActionZoomOut: TAction
      Caption = '-'
      ShortCut = 16429
      OnExecute = ActionZoomOutExecute
    end
  end
end
