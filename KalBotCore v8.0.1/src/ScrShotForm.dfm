object ScrShotForm: TMEScrShotForm
  ActiveControl = ContinueBtn
  Message = 'Screenshot Configuration'
  MinWidth = 0
  OnAction = 'madExcept.HandleScreenshotForm'
  Timer = 250
  object ContinueBtn: INVButton
    Caption = 'Continue'
    Enabled = True
    NoOwnerDraw = False
    Visible = True
  end
  object SkipBtn: INVButton
    Caption = 'Skip'
    Enabled = False
    NoOwnerDraw = False
    Visible = True
  end
  object CancelBtn: INVButton
    Caption = 'Cancel'
    Enabled = True
    NoOwnerDraw = False
    Visible = True
  end
  object AttachCheck: INVCheckBox
    Caption = 'attach a screenshot to the bug report'
    Checked = True
    Enabled = True
    OutputName = ''
    Spacing = 0
  end
  object ScrShotImg: INVImage
    Border = True
    Clickable = True
    Enabled = True
    File = ''
    Height = 0
    Spacing = 0
    Width = 0
  end
  object Label1: INVLabel
    Caption = '(click to edit image)'
    Enabled = True
    Spacing = 0
  end
end
