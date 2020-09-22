VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Windows Lockout"
   ClientHeight    =   4560
   ClientLeft      =   30
   ClientTop       =   315
   ClientWidth     =   6945
   DrawMode        =   1  'Blackness
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   4560
   ScaleWidth      =   6945
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "&About"
      Height          =   495
      Left            =   5640
      TabIndex        =   7
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Timer Timer2 
      Interval        =   1
      Left            =   4200
      Top             =   120
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   3720
      Top             =   120
   End
   Begin VB.CommandButton Command1 
      Caption         =   ">>>&Unlock"
      Default         =   -1  'True
      Height          =   495
      Left            =   5640
      TabIndex        =   5
      Top             =   3960
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   3720
      MaxLength       =   15
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   3480
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   240
      MaxLength       =   50
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   3480
      Width           =   3255
   End
   Begin VB.Label Label4 
      Caption         =   "Windows Lockout 1.0 Was Created By Adam Ranshaw."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   3840
      Width           =   4455
   End
   Begin VB.Label Label3 
      Caption         =   "In the box below type your password for this computer:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   2880
      Width           =   4815
   End
   Begin VB.Label Label2 
      Caption         =   $"Form1a.frx":0000
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   6375
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   3240
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Windows Lockout"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
                                                                                                                      ¦¦¦¦¦¦¦Option Explicit

Private Sub Command1_Click()
If Text1.Text = "1234567890" And Text2.Text = "54321abc" Then
CreateIntegerKey "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskmgr", "0"
End
Else
MsgBox "Invalid Activation Code!", vbExclamation, "Invalid Code"
Form1.Visible = False
End If
End Sub

Private Sub Command2_Click()
MsgBox "Windows Lockout 1.0 was made by Adam Ranshaw, you may download this programe from www.try-buy-software.co.uk", vbInformation, "Made By Adam Ranshaw"
End Sub

Private Sub Form_Load()
MakeResident App.Path & "\" & App.EXEName & ".exe"
CreateIntegerKey "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskmgr", "1"
Form2.Visible = True
End Sub

Private Sub Timer1_Timer()
Form2.Visible = True
End Sub

Private Sub Timer2_Timer()
If Form1.Visible = False Or Form2.Visible = False Then
ExitWindowsEx 1, 0
MsgBox "Windows is now shutting down!", vbInformation, "Shutting Down"
End If
End Sub
