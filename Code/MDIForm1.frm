VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "�����ļ���~"
   ClientHeight    =   4140
   ClientLeft      =   60
   ClientTop       =   -105
   ClientWidth     =   4410
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   ScrollBars      =   0   'False
   StartUpPosition =   2  '��Ļ����
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'****************************************************************************
'���ߣ����ӽ�
'
'���ƣ�MDIForm1.frm
'
'��������ʾĸ����Ĵ���
'
'��վ��https://www.johnzhang.xyz/
'
'���䣺zsgsdesign@gmail.com
'
'��ѭMITЭ�飬���ο�����ע��ԭ���ߣ�
'****************************************************************************
Option Explicit
Private Const WS_MAXIMIZEBOX As Long = &H10000
Private Const WS_THICKFRAME As Long = &H40000
Private Const WS_MINIMIZEBOX = &H20000
Private Const GWL_STYLE = (-16)
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long


Private Sub MDIForm_Load()
  Dim lWnd As Long
Me.Caption = "���ӽ���ѧ���˹���ϵͳ-v" & App.Major & "." & App.Minor
Dim lStyle     As Long

        lStyle = GetWindowLong(Me.hwnd, GWL_STYLE)
        lStyle = lStyle And Not WS_MAXIMIZEBOX             '���
        lStyle = lStyle And Not WS_MINIMIZEBOX             '��С��
        lStyle = lStyle And Not WS_THICKFRAME             '�ɸı��С�ı߿�
        SetWindowLong Me.hwnd, GWL_STYLE, lStyle
End Sub
