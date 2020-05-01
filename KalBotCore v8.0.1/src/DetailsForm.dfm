object DetailsForm: TMEDetailsForm
  Message = 'Error Details'
  MinWidth = 0
  OnAction = ''
  Timer = 0
  object ContinueBtn: INVButton
    Caption = 'Continue'
    Enabled = True
    NoOwnerDraw = False
    Visible = True
  end
  object SkipBtn: INVButton
    Caption = 'Skip'
    Enabled = True
    NoOwnerDraw = False
    Visible = True
  end
  object CancelBtn: INVButton
    Caption = 'Cancel'
    Enabled = True
    NoOwnerDraw = False
    Visible = True
  end
  object Label1: INVLabel
    Caption = 'what were you doing when the error occurred?'
    Enabled = True
    Spacing = 0
  end
  object DetailsMemo: INVEdit
    Colored = True
    Enabled = True
    Lines = 9
    Optional = False
    OutputName = 'error details'
    OutputType = nvoOwnSection
    Spacing = 0
    Text = ''
    Valid = True
  end
end
