object MainForm: TMainForm
  Left = 214
  Top = 122
  AutoScroll = False
  Caption = 'MainForm'
  ClientHeight = 560
  ClientWidth = 938
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
  object PageControlMain: TPageControl
    Left = 0
    Top = 26
    Width = 938
    Height = 515
    ActivePage = TabChat
    Align = alClient
    TabOrder = 0
    object TabMainInfo: TTabSheet
      Caption = 'Main informations'
      ImageIndex = 9
      object PanelCharInformation: TPanel
        Left = 8
        Top = 8
        Width = 305
        Height = 145
        TabOrder = 0
        object LblPlayerName: TLabel
          Left = 8
          Top = 8
          Width = 88
          Height = 13
          Caption = 'Player name: none'
        end
        object LblPlayerClass: TLabel
          Left = 8
          Top = 24
          Width = 86
          Height = 13
          Caption = 'Player class: none'
        end
        object LblPlayerGovernmentPosition: TLabel
          Left = 8
          Top = 40
          Width = 127
          Height = 13
          Caption = 'Government position: none'
        end
        object LblPlayerLevel: TLabel
          Left = 8
          Top = 56
          Width = 84
          Height = 13
          Caption = 'Player level: none'
        end
      end
      object PanelSessionLogs: TPanel
        Left = 8
        Top = 160
        Width = 257
        Height = 193
        TabOrder = 1
        object LblSessionLogs: TLabel
          Left = 8
          Top = 8
          Width = 97
          Height = 13
          Caption = 'Current session logs:'
        end
        object MemoSessionLogs: TMemo
          Left = 1
          Top = 32
          Width = 255
          Height = 160
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
      end
      object PanelAutoLogin: TPanel
        Left = 320
        Top = 8
        Width = 169
        Height = 145
        TabOrder = 2
        object LblLogin: TLabel
          Left = 27
          Top = 19
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Login:'
        end
        object LblPassword: TLabel
          Left = 7
          Top = 51
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Password:'
        end
        object LblPIN: TLabel
          Left = 38
          Top = 83
          Width = 18
          Height = 13
          Alignment = taRightJustify
          Caption = 'PIN'
        end
        object EditLogin: TEdit
          Left = 64
          Top = 16
          Width = 89
          Height = 21
          TabOrder = 0
        end
        object EditPassword: TEdit
          Left = 64
          Top = 48
          Width = 89
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
          Text = 'EditPassword'
        end
        object EditPIN: TEdit
          Left = 64
          Top = 80
          Width = 89
          Height = 21
          TabOrder = 2
          Text = '00000000'
        end
        object ChkBoxAutoLogin: TCheckBox
          Left = 40
          Top = 112
          Width = 81
          Height = 17
          Caption = 'Auto Login'
          TabOrder = 3
        end
      end
      object PanelConnectionInformations: TPanel
        Left = 272
        Top = 160
        Width = 217
        Height = 193
        TabOrder = 3
        DesignSize = (
          217
          193)
        object Bevel1: TBevel
          Left = 8
          Top = 32
          Width = 201
          Height = 57
          Anchors = [akLeft, akRight]
        end
        object LblMainSvrIP: TLabel
          Left = 16
          Top = 40
          Width = 73
          Height = 13
          Caption = 'Main Server IP:'
        end
        object LblMainSvrPort: TLabel
          Left = 16
          Top = 64
          Width = 82
          Height = 13
          Caption = 'Main Server Port:'
        end
        object Bevel2: TBevel
          Left = 8
          Top = 96
          Width = 201
          Height = 33
          Anchors = [akLeft, akRight]
        end
        object LblProxySvrPort: TLabel
          Left = 16
          Top = 104
          Width = 85
          Height = 13
          Caption = 'Proxy Server Port:'
        end
        object LblConnectionInfo: TLabel
          Left = 8
          Top = 8
          Width = 75
          Height = 13
          Caption = 'Connection Info'
        end
      end
      object PanelMiscellaneous: TPanel
        Left = 496
        Top = 8
        Width = 185
        Height = 345
        TabOrder = 4
        DesignSize = (
          185
          345)
        object BtnDoggebiCenser: TButton
          Left = 14
          Top = 40
          Width = 155
          Height = 25
          Action = ActDoggebiCenser
          TabOrder = 0
        end
        object BtnRadar: TButton
          Left = 14
          Top = 8
          Width = 155
          Height = 25
          Action = ActRadar
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
      end
    end
    object TabSniffer: TTabSheet
      Caption = 'Sniffer'
      DesignSize = (
        930
        487)
      object Splitter1: TSplitter
        Left = 0
        Top = 0
        Width = 930
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object MemoSniffer: TMemo
        Left = 0
        Top = 3
        Width = 930
        Height = 484
        Align = alClient
        Lines.Strings = (
          'Sniffer logs:')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object BtnShowLogs: TButton
        Left = 785
        Top = 16
        Width = 99
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'On/Off live logs'
        TabOrder = 1
        OnClick = BtnShowLogsClick
      end
    end
    object TabCure: TTabSheet
      Caption = 'Auto Cure'
      ImageIndex = 2
      OnShow = TabCureShow
      DesignSize = (
        930
        487)
      object SBCureOn: TSpeedButton
        Left = 192
        Top = 136
        Width = 137
        Height = 33
        GroupIndex = 1
        Down = True
        Caption = 'Cure On'
        Visible = False
        OnClick = SBCureOnClick
      end
      object SBCureOff: TSpeedButton
        Left = 192
        Top = 176
        Width = 137
        Height = 33
        GroupIndex = 1
        Caption = 'Cure Off'
        Visible = False
        OnClick = SBCureOnClick
      end
      object BtnAutoCureThread: TButton
        Left = 8
        Top = 16
        Width = 177
        Height = 25
        Caption = 'AUTO CURE'
        TabOrder = 0
        OnClick = BtnAutoCureThreadClick
      end
      object RadGroCureKind: TRadioGroup
        Left = 192
        Top = 16
        Width = 137
        Height = 85
        Caption = 'Cure kind'
        ItemIndex = 0
        Items.Strings = (
          'Single cure'
          'Group cure'
          'Out of party cure')
        TabOrder = 1
        Visible = False
        OnClick = RadGroCureKindClick
      end
      object GroupBoxOutPT: TGroupBox
        Left = 336
        Top = 16
        Width = 265
        Height = 137
        Caption = 'Out party cure'
        TabOrder = 2
        Visible = False
        object SBPickTargetPlayerName: TSpeedButton
          Left = 136
          Top = 16
          Width = 121
          Height = 33
          Caption = 'Take from list'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF002185001D81001D81001D81001E81001E81001E81001E81001E81
            001F81001F81001F81001F81001F81001F81001F81001F81001F81001F81001F
            81002081002485FFFFFF0024893B6BB8439BE92F90E6308EE52E8CE52A8BE528
            88E52787E52586E52384E52183E51E7FE41D7EE41A7CE5187BE41778E41778E4
            1778E41778E41778E4187BE70D4FB60027890021887CB7EB5ABDFF40AFFF3FAE
            FF3DABFF3BA9FD37A7FD35A5FD33A2FD30A0FD2D9EFD2B9BFD2899FC2697FC24
            93FD2091FC1F8FFC1E8EFC1E8FFC1E8FFC1E92FF187AE700268800228D7CB4E8
            5ABEFF42B0FC42AEFC3FACFC3DAAFC3AA7FA37A5FA35A3FA33A0FA309EFA2D9C
            FA2B99FA2897F92695F92393FA2090F91E8EF91D8CF91D8CF91E8EFC177AE500
            278E00268F7DB6EC5CC0FF47B3FC45B2FC43AFFC41ADFC3DABFC3BA7FA39A5FA
            36A4FA34A0FA309FFA2E9DFA2C9BFA2A97F92696F92494F92191F91F8FF91D8D
            F91E8EFB1779E6002C8F0028947FB8EC60C4FF49B6FD49B4FC46B2FC44AFFC41
            ADFC3EABFC3CA8FC3AA6FA37A4FA34A2FA329FFA2F9DFA2D9BFA2A98FA2796F9
            2594F92391FA208FF91F8FFB187AE7012E95002A9880BBEC64C6FF4CB9FD4CB7
            FD4AB5FC48B3FC44B1FC42AEFC3FACFC3DAAFC3BA7FA37A5FA35A3FA33A0FA30
            9EFA2D9CFA2B99FA2897F92695F92493FA2192FB197CE7013098002D9C83BDED
            68C9FF52BCFD50BBFD4DB9FD4BB6FD49B4FC45B2FC43AFFC41ADFC3EABFC3BA8
            FA39A6FA36A4FA34A2FA309FFA2E9DFA2C9BFA2A98F92696F92596FB1C7FE803
            339D0030A183BFED6ACCFF56C0FD53BEFD51BCFD4EBAFD4CB7FD49B4FC46B2FC
            44B1FC42ADFC3EABFC3CA8FC3AA6FA37A4FA34A2FA32A0FA2F9EFA2D9BFA2B98
            FA2797FB1C81E80236A10032A589C3EE69CDFF57C3FD56C0FD54C0FD52BCFD50
            BAFD4CB9FD4AB5FC48B3FC45B1FC42AEFC3FACFC3DAAFC3BA7FA37A5FA35A3FA
            329FFA2D9DFA299AFA2F9CFC3E93EB0036A50035A99FCBEF9DDFFF6FCEFD60C7
            FD53C0FD52BFFD50BCFD4FBAFD4CB8FD4AB5FD48B3FC44B1FC42AEFC40ACFC3B
            AAFC39A7FA34A4FA39A5FA49ABFC63B6FD78C1FF5BA3EC003AA90037AD9ECBF1
            A1E3FF92DAFE93DAFE8FD9FE7CD1FE70CAFD60C3FD5DC0FD59BFFD57BCFD54BA
            FD51B8FD4EB5FD60BAFD64BDFD6FBFFD7CC5FD78C3FD73BFFD74C0FF59A4ED00
            3BAD0039B0A0CDF0A3E5FF93DEFE91DBFE91DAFE8FD9FE90D8FE8DD5FE8CD4FE
            8BD3FE89D1FE88D1FE85CDFE84CDFE81CAFE7FC9FE7BC6FE78C4FE77C3FD75C1
            FD76C3FF5CA6EE003DB0003EB7A1CEF1A6E7FF95DEFE94DEFE93DCFE90DAFE8E
            D9FE8CD7FE8BD4FE88D2FE87D1FE85D0FE83CFFE81CCFE7FCBFE7EC9FE7CC7FE
            7AC5FE78C4FE77C2FE77C4FE5DA9F00041B70040BBA2D1F2A7E9FF97E0FE96E0
            FE95DFFE93DCFE93DAFE9DE1FF9BDEFF99DDFF98DCFF97DBFF95D8FF93D7FF91
            D6FF90D5FF8ED3FF8BD2FF8ACEFF88CDFF8BD0FF6BB2F20043BC0044BEA3D2F3
            A9EBFF9AE2FE99E2FE97E0FE94E0FEA5E7FFAAD5F79BCBF39CCAF49BCBF49BC9
            F49ACAF499C9F497C6F495C5F496C5F395C4F395C5F394C4F396C6F3669EE400
            4AC00046C6A4D4F4ABEDFF9CE6FE9CE4FE99E2FE9BE4FF73BFF1003CC10047C5
            0047C50047C50047C50047C50047C50048C50048C50048C50048C50048C50048
            C50048C6004CC7FFFFFF0049C9A4D4F5ADF0FF9FE7FE9DE7FE9BE3FE9EE6FF7B
            C5F3004BC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004DCEACDCF6C5F9FFAEF0FFADEE
            FFABEDFFACEFFF8ACEF5004FCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0155D45397E6
            ACDDF8A5D8F7A5D7F7A4D5F7A8D9F85195E60155D4FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF0159D90055D70054D70054D70055D70055D7015AD9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SBPickTargetPlayerNameClick
        end
        object EditTargetPlayerName: TLabeledEdit
          Left = 8
          Top = 32
          Width = 121
          Height = 21
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'Player name'
          TabOrder = 0
        end
        object RadGroCureGrade: TRadioGroup
          Left = 8
          Top = 56
          Width = 97
          Height = 73
          Caption = 'Cure grade'
          ItemIndex = 2
          Items.Strings = (
            'Cure 1'
            'Cure 2'
            'Cure 3')
          TabOrder = 1
          OnClick = RadGroCureGradeClick
        end
        object CheckBoxRange: TCheckBox
          Left = 120
          Top = 64
          Width = 97
          Height = 17
          Caption = 'Check range'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBoxRangeClick
        end
        object SpinEditCureRange: TSpinEdit
          Left = 120
          Top = 88
          Width = 105
          Height = 22
          MaxValue = 500
          MinValue = 100
          TabOrder = 3
          Value = 233
          OnChange = SpinEditCureRangeChange
        end
      end
      object GroupBoxCureOptions: TGroupBox
        Left = 8
        Top = 48
        Width = 177
        Height = 193
        Caption = 'Options'
        TabOrder = 3
        Visible = False
        DesignSize = (
          177
          193)
        object CheckBoxUseMeds: TCheckBox
          Left = 16
          Top = 48
          Width = 145
          Height = 17
          Action = ActUseMedicines
          TabOrder = 0
        end
        object TrackBarMedicines: TTrackBar
          Left = 8
          Top = 72
          Width = 161
          Height = 45
          Anchors = [akLeft, akTop, akRight]
          Max = 99
          Min = 1
          Frequency = 10
          Position = 40
          TabOrder = 1
          OnChange = TrackBarMedicinesChange
        end
        object CheckBoxAutoBehead: TCheckBox
          Left = 16
          Top = 112
          Width = 145
          Height = 17
          Caption = 'Auto behead'
          TabOrder = 2
        end
        object TrackBar2: TTrackBar
          Left = 8
          Top = 136
          Width = 161
          Height = 45
          Anchors = [akLeft, akTop, akRight]
          Max = 99
          Min = 1
          Frequency = 10
          Position = 40
          TabOrder = 3
        end
        object CheckBoxUseMeditation: TCheckBox
          Left = 16
          Top = 24
          Width = 145
          Height = 17
          Action = ActAutoMeditation
          State = cbChecked
          TabOrder = 4
        end
      end
      object PanelPick: TPanel
        Left = 753
        Top = 16
        Width = 169
        Height = 161
        Anchors = [akTop, akRight]
        TabOrder = 4
        DesignSize = (
          169
          161)
        object SBPickNow: TSpeedButton
          Left = 8
          Top = 120
          Width = 153
          Height = 33
          Caption = 'Pick Now'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000F3F3F3F4F4F4
            FBFAFBF9F7F5E7E9E8D6D7D5D2D1CFE5E2E1F5F4F1F6F5F3F0EFEFF2F2F2F3F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F3F3F3FFFFFFB8B5B356656C00092602152D0B223A152B40162C424E5B6B
            DFDEDBE6E4E3E5E5E5EBEAEBF2F3F2F2F3F3F4F5F5F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F3F2F2A1A19F0D203A25374C202D421C293D1D
            2A3C263A52222F480A213D8C979ED6D2D0CACBCBD7D8D8E1E1E1ECEBECF2F2F3
            F2F2F2F4F4F4F4F4F4F4F4F4F4F3F3F4F4F4F3F3F3FFFFFF465465111E2D293B
            5420344B1D344C21334B2C435720314B2B3D541C34565B6B7AC2BDBAB1B1B1C6
            C6C6CBCCCBDFDFE0E6E6E6EBEAEBF2F2F2F3F3F3F4F4F4F3F3F3FDFCFAC8CED5
            04132B1A283C2C3D5A1D2E4621364F1C314A364B661F324B253349334B691C3D
            5F9AA2A5C0BEB9B8B6B4C0BFBCCECCCAD0D0D0D3D4D4DADADAE6E6E7F3F3F3F5
            F5F5FFFFFF152E472337502C40592F44642A3E582F46602337512F435F2D415C
            2E426129426733567C46698A3645553F50603F4F5F4B596AA1A3A6C6C3C1BBBB
            BCC6C6C6DADBDBF4F4F4F3F6F6000F2A2E445D344B642F43652E44632C3E532B
            416029425E3B577A39597E344D712F52795282AF162030172538213349233552
            12223F738187CAC5C0BAB9B8C4C4C4EDECECFFFFFF233B502639532B405B3147
            662E4465293E55354C6C2E44643E5E823A5D843C5C7F3A5E854772971A283A23
            324824374C273A552937500D24424D6376BBBAB9EBEAE9F7F7F7FFFFFF788392
            1B2F4B364B672F45602E42632E456731496C2E4A6A4062863A60853753764369
            9A2E4C681D314B1E31472B3F541F354E253044344763293F5D1B3A51FFFFFFF3
            F3F3FDFBFAAEBCC40415322C415B334B632539542D4566273D5D425D80476892
            3B6090466A954875A11A253B1E37501F324B314762233C55242F44293A542E47
            65233D5E8EA6B6FFFFFCF4F3F3FFFFFF6A839005173530435C1F2B412C405B24
            3954405B7A3F648944699C5583B332536F22334D2C435E1F344E314862253750
            2A3A502E466828466B3255793E6289FFFFFFF4F4F4F3F3F3FFFFFF909FAB000E
            2727354A1F30451E2E48415E823D6299517CAB3B62802D405C283C57354B6329
            3C58243C57334A6D334F7339557A2C416533567D2C5481C8D4DEF4F4F4F4F4F4
            F3F3F3FFFFFFCBD2D51E324923354C283A523E5E8940678D36536B293C5A3146
            67293F592E42562C4366354D6D415B7B3659803B5B81385B8035587E386897CF
            DAE0F4F4F4F4F4F4F4F4F4F2F2F2FFFFFF475F751F2E452D44624A74991D283E
            2D415C2D425A3147682E4462283C59375074253A593A5878385C843A5B813A57
            7D355C8546739BFFFFFFF4F4F4F4F4F4F4F3F3F9F9F8D0D5D8132A45273A5732
            4B6C24395324374F334762324860324863283D5A314A6A2A4164385376476587
            3F658A375A823D5E82365E9192AFC1FFFDFAF4F4F4F4F4F4F3F3F3FCFBFAB1BD
            C545596F1B35542C476847749A132942273B54354C662A415A2439552D46682B
            40603753774F6F953B608C406393446994265B8CFFFFFEF4F4F4F4F4F4F4F4F4
            F4F4F4F3F3F3FDFBFAFFFFFFE5EAE8EAEEEFF8FAFA6D848F0C213F2538512D3E
            572231472C425D20354F435D7C39597D446C98496EA03B6B9DA1B9CBFFFFFBF3
            F3F3F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F3F3F3F7F6F6F7F6F6F6F5F5FFFFFF
            8D9BA6081D3A28354926374D1E324C20344F375174466A953E68983C66987196
            B0FFFFFFF3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F3F3F3FFFFFF96A4AD07193028374A1F2D3F2130473E597B31568C
            315C8B6A90ACFFFFFFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3FFFFFF93A2AB1A2E4C263A522F
            4765385B876687A6D5DFE2FFFFFDF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4FDFBFAD7E3
            E612263F222F4420314C2F5176FFFFFFF9F8F7F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F6F5F5F0F4F3283E552338522C41623552731E375799A8B2FFFEFDF3F3F3F4F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4F4F4F4F4FDFEFC576C7F12304C0822451A375D255682627B89
            FFFFFFF3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
            F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F4F4F4FFFFFFFFFFFEE6E9E9EB
            EFEFE7EBECFFFFFFF2F3F3F4F3F4F4F4F4F4F4F4F4F4F4F4F4F4}
          OnClick = SBPickNowClick
        end
        object LblDelayTime: TLabel
          Left = 16
          Top = 96
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Delay time:'
        end
        object LblSec: TLabel
          Left = 136
          Top = 96
          Width = 20
          Height = 13
          Caption = 'sec.'
        end
        object RGPickStrategy: TRadioGroup
          Left = 8
          Top = 8
          Width = 153
          Height = 81
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Pick strategy'
          ItemIndex = 2
          Items.Strings = (
            'Manual'
            'Immediately'
            'Deleyed')
          TabOrder = 0
          OnClick = RGPickStrategyClick
        end
        object SpinEditPickDelay: TSpinEdit
          Left = 72
          Top = 93
          Width = 57
          Height = 22
          Increment = 10
          MaxValue = 300
          MinValue = 1
          TabOrder = 1
          Value = 70
          OnChange = SpinEditPickDelayChange
        end
      end
      object ChkBoxCureG1Only: TCheckBox
        Left = 192
        Top = 104
        Width = 97
        Height = 17
        Caption = 'Cure G1 Only'
        TabOrder = 5
        Visible = False
        OnClick = ChkBoxCureG1OnlyClick
      end
    end
    object TabThiefAttack: TTabSheet
      Caption = 'Thief Attack'
      ImageIndex = 8
      OnShow = TabThiefAttackShow
      object PanelThiefBot: TPanel
        Left = 8
        Top = 8
        Width = 329
        Height = 185
        TabOrder = 0
        DesignSize = (
          329
          185)
        object LblActivationLvl: TLabel
          Left = 168
          Top = 72
          Width = 93
          Height = 13
          Caption = 'Meds HP activation'
        end
        object BtnCreateThiefBotThread: TButton
          Left = 16
          Top = 16
          Width = 137
          Height = 25
          Action = ActCreateThiefBotThread
          TabOrder = 0
        end
        object CBAutoDoK: TCheckBox
          Left = 16
          Top = 48
          Width = 137
          Height = 17
          Action = ActUseAutoDoK
          TabOrder = 1
        end
        object CBAutoCounterOffensive: TCheckBox
          Left = 16
          Top = 72
          Width = 153
          Height = 17
          Action = ActUseAutoCO
          TabOrder = 2
        end
        object CBAutoCounterAttack: TCheckBox
          Left = 16
          Top = 96
          Width = 145
          Height = 17
          Action = ActUseAutoCA
          TabOrder = 3
        end
        object CBAutoSpin: TCheckBox
          Left = 16
          Top = 120
          Width = 145
          Height = 17
          Action = ActUseAutoSpin
          TabOrder = 4
        end
        object BtnSuspendResumeThiefBot: TButton
          Left = 24
          Top = 144
          Width = 113
          Height = 25
          Caption = 'Stop bot'
          Enabled = False
          TabOrder = 5
          OnClick = BtnSuspendResumeThiefBotClick
        end
        object CBUseMedicines: TCheckBox
          Left = 168
          Top = 48
          Width = 137
          Height = 17
          Action = ActUseThiefAutoMedicines
          TabOrder = 6
        end
        object TBThiefMedicines: TTrackBar
          Left = 168
          Top = 88
          Width = 145
          Height = 45
          Anchors = [akLeft, akTop, akRight]
          Max = 99
          Min = 1
          Frequency = 10
          Position = 40
          TabOrder = 7
          OnChange = TBThiefMedicinesChange
        end
        object Button3: TButton
          Left = 168
          Top = 16
          Width = 137
          Height = 25
          Action = ActTerminateThiefThtrad
          TabOrder = 8
        end
      end
    end
    object TabAutoSplash: TTabSheet
      Caption = 'Auto Splash'
      ImageIndex = 5
      OnShow = TabAutoSplashShow
      object PnlAutoSplash: TPanel
        Left = 8
        Top = 8
        Width = 257
        Height = 97
        TabOrder = 0
        object SBSplashEnabled: TSpeedButton
          Left = 16
          Top = 40
          Width = 97
          Height = 22
          GroupIndex = 1
          Down = True
          Caption = 'Enabled'
          Enabled = False
          OnClick = SBSplashEnabledClick
        end
        object SBSplashDisabled: TSpeedButton
          Left = 16
          Top = 64
          Width = 97
          Height = 22
          GroupIndex = 1
          Caption = 'Disabled'
          Enabled = False
          OnClick = SBSplashDisabledClick
        end
        object BtnStartThreadAutoSplesh: TButton
          Left = 8
          Top = 8
          Width = 113
          Height = 25
          Caption = 'Auto Splasher thread'
          TabOrder = 0
          OnClick = BtnStartThreadAutoSpleshClick
        end
        object ChkBoxMeditation: TCheckBox
          Left = 144
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Auto Meditation'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = ChkBoxMeditationClick
        end
        object ChkBoxBehead: TCheckBox
          Left = 144
          Top = 40
          Width = 97
          Height = 17
          Caption = 'Auto Behead'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = ChkBoxBeheadClick
        end
      end
      object TrackBarBeheadAggro: TTrackBar
        Left = 360
        Top = 88
        Width = 150
        Height = 41
        Max = 100
        Min = 1
        Frequency = 10
        Position = 1
        TabOrder = 1
        OnChange = TrackBarBeheadAggroChange
      end
    end
    object TabStall: TTabSheet
      Caption = 'Stall'
      ImageIndex = 9
      OnShow = TabStallShow
      object Splitter2: TSplitter
        Left = 209
        Top = 0
        Height = 487
      end
      object PanelStallLog: TPanel
        Left = 0
        Top = 0
        Width = 209
        Height = 487
        Align = alLeft
        Caption = 'PanelStallLog'
        TabOrder = 0
        object LblStallLogs: TLabel
          Left = 8
          Top = 8
          Width = 45
          Height = 13
          Caption = 'Stall logs:'
        end
        object MemoMacro: TMemo
          Left = 1
          Top = 32
          Width = 207
          Height = 454
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object PanelStallMacro: TPanel
        Left = 212
        Top = 0
        Width = 341
        Height = 487
        Align = alLeft
        TabOrder = 1
        DesignSize = (
          341
          487)
        object Bevel3: TBevel
          Left = 1
          Top = 1
          Width = 339
          Height = 485
          Align = alClient
        end
        object LblStallRecordingStatus: TLabel
          Left = 16
          Top = 16
          Width = 185
          Height = 13
          Caption = 'Stall recording status: No recording atm'
        end
        object Bevel4: TBevel
          Left = 16
          Top = 64
          Width = 305
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object LblStallState: TLabel
          Left = 16
          Top = 40
          Width = 84
          Height = 13
          Caption = 'Stall state: not set'
        end
        object BtnStartMacroRecording: TButton
          Left = 16
          Top = 80
          Width = 97
          Height = 25
          Action = ActStartMacroRecording
          TabOrder = 0
        end
        object BtnStopMacroRecording: TButton
          Left = 16
          Top = 112
          Width = 97
          Height = 25
          Action = ActStopMacroRecording
          TabOrder = 1
        end
        object BtnRunMacro: TButton
          Left = 16
          Top = 152
          Width = 97
          Height = 25
          Action = ActRunMacro
          TabOrder = 2
        end
        object BtnDeleteMacro: TButton
          Left = 16
          Top = 192
          Width = 97
          Height = 25
          Action = ActDeleteMacro
          TabOrder = 3
        end
        object ListBoxStallMacros: TListBox
          Left = 120
          Top = 80
          Width = 201
          Height = 305
          Anchors = [akLeft, akTop, akRight, akBottom]
          Constraints.MinHeight = 208
          Constraints.MinWidth = 201
          ItemHeight = 13
          TabOrder = 4
        end
        object BtnSaveMacros: TButton
          Left = 16
          Top = 224
          Width = 97
          Height = 25
          Action = ActSaveMacros
          TabOrder = 5
        end
      end
    end
    object TabChat: TTabSheet
      Caption = 'Chat'
      ImageIndex = 3
      object MemoChat: TMemo
        Left = 0
        Top = 0
        Width = 930
        Height = 440
        Align = alClient
        TabOrder = 0
      end
      object PanelChatSend: TPanel
        Left = 0
        Top = 440
        Width = 930
        Height = 47
        Align = alBottom
        TabOrder = 1
        object LblChatMessageLen: TLabel
          Left = 472
          Top = 13
          Width = 117
          Height = 13
          Caption = 'Character count: 0 / 127'
        end
        object EditChatMessage: TEdit
          Left = 0
          Top = 10
          Width = 337
          Height = 21
          MaxLength = 127
          TabOrder = 0
          OnChange = EditChatMessageChange
        end
        object BtnSendChatMessage: TButton
          Left = 344
          Top = 8
          Width = 121
          Height = 25
          Action = ActSendChatToServer
          TabOrder = 1
        end
      end
    end
    object TabPlayers: TTabSheet
      Caption = 'Players list'
      ImageIndex = 4
      object MemoPlayers: TMemo
        Left = 0
        Top = 0
        Width = 930
        Height = 487
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TabFastWalking: TTabSheet
      Caption = 'Fast Walking'
      ImageIndex = 10
      object PanelRevivalPoints: TPanel
        Left = 440
        Top = 8
        Width = 257
        Height = 409
        TabOrder = 0
        object BtnSaveRevivalPoint: TButton
          Left = 72
          Top = 344
          Width = 113
          Height = 25
          Action = ActSaveRevivalPoint
          TabOrder = 0
        end
        object RGRevivalPoints: TRadioGroup
          Left = 8
          Top = 8
          Width = 233
          Height = 329
          Caption = 'Revival Points'
          Items.Strings = (
            'Narootuh'
            'Jook-Suh Cargo Station'
            'Geum-Oh Mine'
            'The Pub of the Giant Bird'
            'Temporary Fort of Geum-Ohee Castle'
            'Forest of Statues'
            'Geum-Oh Main Castle'
            'Geum-Oh Castle East Gate'
            'Geum-Oh Castle West Gate'
            'City of Priest'
            'Doggebi Tower')
          TabOrder = 1
        end
        object BtnGoToRevivalPoint: TButton
          Left = 72
          Top = 376
          Width = 113
          Height = 25
          Action = ActGoToRevivalPoint
          TabOrder = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 8
        Width = 433
        Height = 409
        Caption = 'Panel1'
        TabOrder = 1
        object GaugeTrip: TGauge
          Left = 8
          Top = 344
          Width = 409
          Height = 17
          ForeColor = clSkyBlue
          Progress = 0
        end
        object LblTripProgress: TLabel
          Left = 8
          Top = 320
          Width = 64
          Height = 13
          Caption = 'Trip progress:'
        end
        object LblSavedLocations: TLabel
          Left = 8
          Top = 40
          Width = 83
          Height = 13
          Caption = 'Saved Locations:'
        end
        object BtnEmergencyEscape: TButton
          Left = 296
          Top = 368
          Width = 121
          Height = 25
          Action = ActEmergencyEscape
          TabOrder = 0
        end
        object BtnStopFastWalking: TButton
          Left = 136
          Top = 368
          Width = 121
          Height = 25
          Action = ActBreakFastWalkingThread
          TabOrder = 1
        end
        object BtnStartFastWalking: TButton
          Left = 8
          Top = 368
          Width = 121
          Height = 25
          Action = ActStartWalkThread
          TabOrder = 2
        end
        object ListBoxSavedLocations: TListBox
          Left = 8
          Top = 56
          Width = 409
          Height = 257
          ItemHeight = 13
          TabOrder = 3
        end
        object BtnAddLocation: TButton
          Left = 8
          Top = 8
          Width = 89
          Height = 25
          Action = ActAddLocation
          TabOrder = 4
        end
        object BtnDeleteSelectedLocation: TButton
          Left = 104
          Top = 8
          Width = 89
          Height = 25
          Action = ActDeleteLocation
          TabOrder = 5
        end
        object BtnReloadLocations: TButton
          Left = 312
          Top = 8
          Width = 105
          Height = 25
          Action = ActReloadLocationList
          TabOrder = 6
        end
      end
    end
    object TabTest: TTabSheet
      Caption = 'TabTest'
      ImageIndex = 6
      DesignSize = (
        930
        487)
      object Memo2: TMemo
        Left = 0
        Top = 8
        Width = 273
        Height = 161
        Lines.Strings = (
          'Memo2')
        TabOrder = 0
      end
      object Memo4: TMemo
        Left = 304
        Top = 40
        Width = 618
        Height = 408
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'Memo4')
        TabOrder = 1
      end
      object Button5: TButton
        Left = 304
        Top = 458
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'PrintItemList'
        TabOrder = 2
        OnClick = Button5Click
      end
      object Button10: TButton
        Left = 80
        Top = 176
        Width = 185
        Height = 25
        Caption = 'Szop Print Item List'
        TabOrder = 3
        OnClick = Button10Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 208
        Width = 297
        Height = 249
        TabOrder = 4
      end
      object Button4: TButton
        Left = 0
        Top = 176
        Width = 75
        Height = 25
        Caption = 'PlayerInfo'
        TabOrder = 5
        OnClick = Button4Click
      end
      object Button18: TButton
        Left = 648
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Gdzie jestem?'
        TabOrder = 6
        OnClick = Button18Click
      end
      object Button19: TButton
        Left = 392
        Top = 8
        Width = 91
        Height = 25
        Caption = 'wypij medycynke'
        TabOrder = 7
      end
      object BtnQuests: TButton
        Left = 568
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Quests'
        TabOrder = 8
        OnClick = BtnQuestsClick
      end
      object Button7: TButton
        Left = 488
        Top = 8
        Width = 75
        Height = 25
        Caption = '> Speeder <'
        TabOrder = 9
        OnClick = Button7Click
      end
      object mstatex: TButton
        Left = 312
        Top = 8
        Width = 75
        Height = 25
        Caption = 'mstatex'
        TabOrder = 10
        OnClick = mstatexClick
      end
      object EditQ: TEdit
        Left = 288
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 11
        Text = '7'
      end
    end
    object TabMap: TTabSheet
      Caption = 'Map'
      ImageIndex = 7
      object Image1: TImage
        Left = 24
        Top = 16
        Width = 273
        Height = 265
      end
      object Button12: TButton
        Left = 312
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Button12'
        TabOrder = 0
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 320
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Button13'
        TabOrder = 1
        OnClick = Button13Click
      end
      object Edit1: TEdit
        Left = 304
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '233220'
      end
      object Edit2: TEdit
        Left = 304
        Top = 136
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '290718'
      end
      object Memo3: TMemo
        Left = 16
        Top = 336
        Width = 361
        Height = 145
        Lines.Strings = (
          'Memo3')
        TabOrder = 4
      end
      object Button15: TButton
        Left = 320
        Top = 200
        Width = 75
        Height = 25
        Caption = 'start walking'
        TabOrder = 5
        OnClick = Button15Click
      end
      object Button2: TButton
        Left = 120
        Top = 296
        Width = 121
        Height = 25
        Caption = 'Walk on map'
        TabOrder = 6
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 24
        Top = 296
        Width = 89
        Height = 25
        Caption = 'Fast Walking'
        TabOrder = 7
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 938
    Height = 26
    UseSystemFont = False
    ActionManager = ActionManager
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object StatusBarMain: TStatusBar
    Left = 0
    Top = 541
    Width = 938
    Height = 19
    Panels = <>
  end
  object MainSvrClientSock: TClientSocket
    Active = False
    Address = '222.111.213.22'
    ClientType = ctNonBlocking
    Port = 30001
    OnConnect = MainSvrClientSockConnect
    OnRead = MainSvrClientSockRead
    OnError = MainSvrClientSockError
    Left = 704
    Top = 8
  end
  object ROAMServSock: TServerSocket
    Active = False
    Port = 30006
    ServerType = stNonBlocking
    OnClientConnect = ROAMServSockClientConnect
    OnClientDisconnect = ROAMServSockClientDisconnect
    OnClientRead = ROAMServSockClientRead
    OnClientError = ROAMServSockClientError
    Left = 672
    Top = 8
  end
  object Timer2: TTimer
    Tag = 9
    Enabled = False
    Interval = 300
    Left = 772
    Top = 8
  end
  object IconImageList: TImageList
    Left = 636
    Top = 8
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000248900439BE9002F90E6002E8C
      E5002A8BE5002787E5002586E5002183E5001E7FE4001A7CE500187BE4001778
      E4001778E4001778E400187BE700002789000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000002188005ABDFF0040AFFF003DAB
      FF003BA9FD0035A5FD0033A2FD002D9EFD002B9BFD002697FC002493FD001F8F
      FC001E8EFC001E8FFC001E92FF00002688000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000268F005CC0FF0047B3FC0043AF
      FC0041ADFC003BA7FA0039A5FA0034A0FA00309FFA002C9BFA002A97F9002494
      F9002191F9001D8DF9001E8EFB00002C8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000028940060C4FF0049B6FD0046B2
      FC0044AFFC003EABFC003CA8FC0037A4FA0034A2FA002F9DFA002D9BFA002796
      F9002594F900208FF9001F8FFB00012E95000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000002D9C0068C9FF0052BCFD004DB9
      FD004BB6FD0045B2FC0043AFFC003EABFC003BA8FA0036A4FA0034A2FA002E9D
      FA002C9BFA002696F9002596FB0003339D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000030A1006ACCFF0056C0FD0051BC
      FD004EBAFD0049B4FC0046B2FC0042ADFC003EABFC003AA6FA0037A4FA0032A0
      FA002F9EFA002B98FA002797FB000236A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000035A9009DDFFF006FCEFD0053C0
      FD0052BFFD004FBAFD004CB8FD0048B3FC0044B1FC0040ACFC003BAAFC0034A4
      FA0039A5FA0063B6FD0078C1FF00003AA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000037AD00A1E3FF0092DAFE008FD9
      FE007CD1FE0060C3FD005DC0FD0057BCFD0054BAFD004EB5FD0060BAFD006FBF
      FD007CC5FD0073BFFD0074C0FF00003BAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000003EB700A6E7FF0095DEFE0093DC
      FE0090DAFE008CD7FE008BD4FE0087D1FE0085D0FE0081CCFE007FCBFE007CC7
      FE007AC5FE0077C2FE0077C4FE000041B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000040BB00A7E9FF0097E0FE0095DF
      FE0093DCFE009DE1FF009BDEFF0098DCFF0097DBFF0093D7FF0091D6FF008ED3
      FF008BD2FF0088CDFF008BD0FF000043BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000046C600ABEDFF009CE6FE0099E2
      FE009BE4FF00003CC1000047C5000047C5000047C5000047C5000048C5000048
      C5000048C5000048C5000048C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049C900ADF0FF009FE7FE009BE3
      FE009EE6FF00004BC90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000155D400ACDDF800A5D8F700A4D5
      F700A8D9F8000155D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000055D7000054D7000055
      D7000055D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000003FF00000000000003FF000000000000
      87FF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = ActFileExit
                ImageIndex = 43
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = ActSnifferWordWrap
                Caption = '&Word wrap logs'
              end
              item
                Action = ActClearSniferLogs
                Caption = '&Clear snifer logs'
                ShortCut = 16453
              end>
            Caption = '&Sniffer'
          end
          item
            Items = <
              item
                Action = ActAutoMeditation
                Caption = '&Auto Meditation'
              end
              item
                Action = ActUseMedicines
              end>
            Caption = '&Auto Cure'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    OnUpdate = ActionManagerUpdate
    Left = 608
    Top = 8
    StyleName = 'XP Style'
    object ActFileExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object ActClearSniferLogs: TAction
      Category = 'Sniffer'
      Caption = 'Clear snifer logs'
      ShortCut = 16453
      OnExecute = ActClearSniferLogsExecute
      OnUpdate = ActClearSniferLogsUpdate
    end
    object ActSnifferWordWrap: TAction
      Category = 'Sniffer'
      Caption = 'Word wrap logs'
      OnExecute = ActSnifferWordWrapExecute
      OnUpdate = ActSnifferWordWrapUpdate
    end
    object ActAutoMeditation: TAction
      Category = 'AutoCure'
      AutoCheck = True
      Caption = 'Auto Meditation'
      Checked = True
      OnExecute = ActAutoMeditationExecute
    end
    object ActUseMedicines: TAction
      Category = 'AutoCure'
      AutoCheck = True
      Caption = 'Use Medicines'
      OnExecute = ActUseMedicinesExecute
    end
    object ActStartMacroRecording: TAction
      Category = 'Stall'
      Caption = 'Start recording'
      OnExecute = ActStartMacroRecordingExecute
    end
    object ActStopMacroRecording: TAction
      Category = 'Stall'
      Caption = 'Stop recording'
      OnExecute = ActStopMacroRecordingExecute
    end
    object ActRunMacro: TAction
      Category = 'Stall'
      Caption = 'Run macro'
      OnExecute = ActRunMacroExecute
    end
    object ActDeleteMacro: TAction
      Category = 'Stall'
      Caption = 'Delete macro'
      ShortCut = 16430
      OnExecute = ActDeleteMacroExecute
    end
    object ActSaveMacros: TAction
      Category = 'Stall'
      Caption = 'Save all macros'
      OnExecute = ActSaveMacrosExecute
    end
    object ActCreateThiefBotThread: TAction
      Category = 'ThiefBot'
      Caption = 'Create thief bot'
      OnExecute = ActCreateThiefBotThreadExecute
      OnUpdate = ActCreateThiefBotThreadUpdate
    end
    object ActUseAutoDoK: TAction
      Category = 'ThiefBot'
      AutoCheck = True
      Caption = 'Use Dance of Killing'
      OnExecute = ActUseAutoDoKExecute
    end
    object ActUseAutoCO: TAction
      Category = 'ThiefBot'
      AutoCheck = True
      Caption = 'Use Counter Offensive'
      OnExecute = ActUseAutoCOExecute
    end
    object ActUseAutoCA: TAction
      Category = 'ThiefBot'
      AutoCheck = True
      Caption = 'Use Counter Attack'
      OnExecute = ActUseAutoCAExecute
    end
    object ActUseAutoSpin: TAction
      Category = 'ThiefBot'
      AutoCheck = True
      Caption = 'Use Spin Attack'
      Enabled = False
      OnExecute = ActUseAutoSpinExecute
    end
    object ActUseThiefAutoMedicines: TAction
      Category = 'ThiefBot'
      AutoCheck = True
      Caption = 'Use auto medicines'
      OnExecute = ActUseThiefAutoMedicinesExecute
    end
    object ActTerminateThiefThtrad: TAction
      Category = 'ThiefBot'
      Caption = 'Terminate Thief Thtrad'
      OnExecute = ActTerminateThiefThtradExecute
      OnUpdate = ActTerminateThiefThtradUpdate
    end
    object ActStartWalkThread: TAction
      Category = 'FastWalking'
      Caption = 'Start fast walking'
      OnExecute = ActStartWalkThreadExecute
      OnUpdate = ActStartWalkThreadUpdate
    end
    object ActReloadLocationList: TAction
      Category = 'FastWalking'
      Caption = 'Reload location list'
      OnExecute = ActReloadLocationListExecute
    end
    object ActSendChatToServer: TAction
      Category = 'Chat'
      Caption = 'Send chat message'
      OnExecute = ActSendChatToServerExecute
    end
    object ActBreakFastWalkingThread: TAction
      Category = 'FastWalking'
      Caption = 'Break fast walking'
      OnExecute = ActBreakFastWalkingThreadExecute
      OnUpdate = ActBreakFastWalkingThreadUpdate
    end
    object ActRadar: TAction
      Category = 'Misc'
      Caption = 'Show radar'
      ShortCut = 16466
      OnExecute = ActRadarExecute
    end
    object ActEmergencyEscape: TAction
      Category = 'Misc'
      Caption = 'Emergency Escape'
      OnExecute = ActEmergencyEscapeExecute
      OnUpdate = ActEmergencyEscapeUpdate
    end
    object ActAddLocation: TAction
      Category = 'FastWalking'
      Caption = 'Add location'
      OnExecute = ActAddLocationExecute
    end
    object ActDeleteLocation: TAction
      Category = 'FastWalking'
      Caption = 'Delete location'
      OnExecute = ActDeleteLocationExecute
      OnUpdate = ActDeleteLocationUpdate
    end
    object ActDoggebiCenser: TAction
      Category = 'Misc'
      Caption = 'Doggebi Censer'
      OnExecute = ActDoggebiCenserExecute
    end
    object ActSaveRevivalPoint: TAction
      Category = 'FastWalking'
      Caption = 'Save revival point'
      OnExecute = ActSaveRevivalPointExecute
      OnUpdate = ActSaveRevivalPointUpdate
    end
    object ActGoToRevivalPoint: TAction
      Category = 'FastWalking'
      Caption = 'Go to revival point'
      OnExecute = ActGoToRevivalPointExecute
      OnUpdate = ActGoToRevivalPointUpdate
    end
  end
  object TimerWalker: TTimer
    Enabled = False
    Interval = 5
    OnTimer = TimerWalkerTimer
    Left = 364
    Top = 240
  end
end
