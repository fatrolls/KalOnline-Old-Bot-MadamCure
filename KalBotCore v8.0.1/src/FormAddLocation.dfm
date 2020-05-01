object FormAddLocation: TFormAddLocation
  Left = 491
  Top = 183
  Width = 380
  Height = 248
  Caption = 'Add Location'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    372
    217)
  PixelsPerInch = 96
  TextHeight = 13
  object LblMapIndex: TLabel
    Left = 24
    Top = 19
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'LblMapIndex:'
  end
  object LblCoordX: TLabel
    Left = 25
    Top = 51
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'X coordinate:'
  end
  object LblCoordY: TLabel
    Left = 25
    Top = 83
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Y coordinate:'
  end
  object LblCoordZ: TLabel
    Left = 25
    Top = 115
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Z coordinate:'
  end
  object LblMapDescription: TLabel
    Left = 8
    Top = 147
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Map Description:'
  end
  object SpinEditMapIndex: TSpinEdit
    Left = 96
    Top = 16
    Width = 73
    Height = 22
    MaxValue = 65
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object SpinEditCoordX: TSpinEdit
    Left = 96
    Top = 48
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object SpinEditCoordY: TSpinEdit
    Left = 96
    Top = 80
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEditCoordZ: TSpinEdit
    Left = 96
    Top = 112
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object EditDescription: TEdit
    Left = 96
    Top = 144
    Width = 257
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    Text = 'Description'
  end
  object BtnGetCurCoord: TButton
    Left = 8
    Top = 178
    Width = 137
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Get current coordinates'
    TabOrder = 5
    OnClick = BtnGetCurCoordClick
  end
  object BtnConfirm: TButton
    Left = 201
    Top = 178
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 6
  end
  object BtnCancel: TButton
    Left = 281
    Top = 178
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
end
