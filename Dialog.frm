VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.ocx"
Begin VB.Form Dialog 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "����ʹ��"
   ClientHeight    =   4515
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   4575
   Icon            =   "Dialog.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4515
   ScaleWidth      =   4575
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   3615
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   6376
      _Version        =   393217
      Enabled         =   -1  'True
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      Appearance      =   0
      FileName        =   "E:\ery6ter6aey\aaa\Hack\eula.rtf"
      TextRTF         =   $"Dialog.frx":0442
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton CancelButton 
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton OKButton 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   3960
      Width           =   1215
   End
End
Attribute VB_Name = "Dialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'****************************************************************************
'���ߣ����ӽ�
'
'���ƣ�Dialog.frm
'
'��������ʾ�����û����Э��Ĵ���
'
'��վ��https://www.johnzhang.xyz/
'
'���䣺zsgsdesign@gmail.com
'
'��ѭMITЭ�飬���ο�����ע��ԭ���ߣ�
'****************************************************************************
Option Explicit

Private Sub CancelButton_Click()
End
End Sub

Private Sub Form_Load()
SkinH_AttachEx App.Path & "/aero.she", ""

  SkinH_SetAero 1


If GetSetting("HackingSystem", "User", "first") = "1" Then
Form1.Show
Unload Dialog
Else
End If
End Sub

Private Sub OKButton_Click()
Form1.Show
Unload Dialog
SaveSetting "HackingSystem", "User", "first", "1"
End Sub

