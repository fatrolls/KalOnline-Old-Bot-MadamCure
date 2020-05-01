object ContactForm: TMEContactForm
  Message = 'Contact Information'
  MinWidth = 0
  OnAction = 'madExcept.HandleContactForm'
  Timer = 0
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
  object Label1: INVLabel
    Caption = 'your name:'
    Enabled = True
    Spacing = 0
  end
  object NameEdit: INVEdit
    Colored = True
    Enabled = True
    Lines = 1
    Optional = True
    OutputName = 'contact name'
    OutputType = nvoHeader
    Spacing = 0
    Text = ''
    Valid = True
  end
  object Label2: INVLabel
    Caption = 'your email:'
    Enabled = True
    Spacing = 0
  end
  object EmailEdit: INVEdit
    Colored = True
    Enabled = True
    Lines = 1
    Optional = False
    OutputName = 'contact email'
    OutputType = nvoHeader
    Spacing = 0
    Text = ''
    Valid = True
  end
  object MemCheck: INVCheckBox
    Caption = 'remember me'
    Checked = False
    Enabled = True
    OutputName = ''
    Spacing = 0
  end
end
