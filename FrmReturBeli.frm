VERSION 5.00
Begin VB.Form FrmReturBeli 
   BackColor       =   &H00FFFFFF&
   Caption         =   ".: Retur Pembelian :."
   ClientHeight    =   7740
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9765
   Icon            =   "FrmReturBeli.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7740
   ScaleWidth      =   9765
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtNoPembelian 
      Height          =   350
      Left            =   3480
      MaxLength       =   10
      TabIndex        =   35
      Top             =   480
      Width           =   1600
   End
   Begin VB.TextBox TxtNota 
      Height          =   350
      Left            =   3120
      MaxLength       =   30
      TabIndex        =   6
      Top             =   120
      Width           =   1600
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Total Jual [Rp]"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   120
      TabIndex        =   4
      Top             =   2880
      Width           =   4815
      Begin VB.Label LblTotBeli 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   33.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   120
         TabIndex        =   5
         Top             =   360
         Width           =   4455
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Total Retur [Rp]"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   120
      TabIndex        =   2
      Top             =   6360
      Width           =   4815
      Begin VB.Label LabelBayar 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   33.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   4455
      End
   End
   Begin VB.TextBox TxtKodeBarang 
      Height          =   350
      Left            =   1920
      TabIndex        =   1
      Top             =   4200
      Width           =   1725
   End
   Begin VB.TextBox TxtJumlah 
      Alignment       =   2  'Center
      Height          =   350
      Left            =   8880
      TabIndex        =   0
      Top             =   4200
      Width           =   765
   End
   Begin VB.PictureBox cmdCari 
      Height          =   375
      Left            =   4800
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   7
      Top             =   120
      Width           =   375
   End
   Begin VB.PictureBox GridBeli 
      Height          =   1695
      Left            =   120
      ScaleHeight     =   1635
      ScaleWidth      =   9555
      TabIndex        =   8
      Top             =   4560
      Width           =   9615
   End
   Begin VB.PictureBox CmdBaru 
      Height          =   375
      Left            =   5520
      ScaleHeight     =   315
      ScaleWidth      =   1155
      TabIndex        =   9
      Top             =   6720
      Width           =   1215
   End
   Begin VB.PictureBox CmdSimpan 
      Height          =   375
      Left            =   6840
      ScaleHeight     =   315
      ScaleWidth      =   1155
      TabIndex        =   10
      Top             =   6720
      Width           =   1215
   End
   Begin VB.PictureBox cmdKeluar 
      Height          =   375
      Left            =   8160
      ScaleHeight     =   315
      ScaleWidth      =   1155
      TabIndex        =   11
      Top             =   6720
      Width           =   1215
   End
   Begin VB.PictureBox GridBarang 
      Height          =   1935
      Left            =   120
      ScaleHeight     =   1875
      ScaleWidth      =   9555
      TabIndex        =   12
      ToolTipText     =   "KLIK 2x DISINI UNTUK PILIH DATA"
      Top             =   960
      Width           =   9615
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   " [Enter] - untuk melanjutkan transaksi"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   240
      Left            =   5880
      TabIndex        =   37
      Top             =   7200
      Width           =   3045
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "No. Pembelian"
      Height          =   345
      Left            =   2280
      TabIndex        =   36
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label5 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Tanggal Nota"
      Height          =   345
      Left            =   7680
      TabIndex        =   34
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label LblTglNota 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   8760
      TabIndex        =   33
      Top             =   480
      Width           =   885
   End
   Begin VB.Label LblJenis 
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   6480
      TabIndex        =   32
      Top             =   480
      Width           =   1005
   End
   Begin VB.Label Label6 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Jenis"
      Height          =   345
      Left            =   5400
      TabIndex        =   31
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label LblNomorRetur 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   120
      TabIndex        =   30
      Top             =   480
      Width           =   1995
   End
   Begin VB.Label LblKodePelanggan 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   6480
      TabIndex        =   29
      Top             =   120
      Width           =   1005
   End
   Begin VB.Label LblNamaPelanggan 
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   7680
      TabIndex        =   28
      Top             =   120
      Width           =   2010
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Nomor Retur"
      Height          =   345
      Left            =   120
      TabIndex        =   27
      Top             =   120
      Width           =   1995
   End
   Begin VB.Label LblNota 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "No. Nota"
      Height          =   345
      Left            =   2280
      TabIndex        =   26
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label8 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Pemasok"
      Height          =   345
      Left            =   5400
      TabIndex        =   25
      Top             =   120
      Width           =   1065
   End
   Begin VB.Label LblUangMuka 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   8400
      TabIndex        =   24
      Top             =   3360
      Width           =   1245
   End
   Begin VB.Label LblDibayar 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   5880
      TabIndex        =   23
      Top             =   3360
      Width           =   1245
   End
   Begin VB.Label LblSisa 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   8400
      TabIndex        =   22
      Top             =   3720
      Width           =   1245
   End
   Begin VB.Label LblSisa1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Sisa"
      Height          =   345
      Left            =   7320
      TabIndex        =   21
      Top             =   3720
      Width           =   1005
   End
   Begin VB.Label LblUangMuka1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Uang Muka"
      Height          =   345
      Left            =   7320
      TabIndex        =   20
      Top             =   3360
      Width           =   1005
   End
   Begin VB.Label LblDibayar1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Dibayar"
      Height          =   345
      Left            =   5040
      TabIndex        =   19
      Top             =   3360
      Width           =   795
   End
   Begin VB.Label LblKembali1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Kembali"
      Height          =   345
      Left            =   5040
      TabIndex        =   18
      Top             =   3720
      Width           =   795
   End
   Begin VB.Label LblKembali 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   5880
      TabIndex        =   17
      Top             =   3720
      Width           =   1245
   End
   Begin VB.Label Label11 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Kode / Scan Barcode"
      Height          =   345
      Left            =   120
      TabIndex        =   16
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label NamaBarang 
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   3720
      TabIndex        =   15
      Top             =   4200
      Width           =   2595
   End
   Begin VB.Label HargaBeli 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   6360
      TabIndex        =   14
      Top             =   4200
      Width           =   1245
   End
   Begin VB.Label Total 
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Jumlah Retur"
      Height          =   345
      Left            =   7680
      TabIndex        =   13
      Top             =   4200
      Width           =   1140
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      Height          =   1095
      Left            =   5280
      Shape           =   4  'Rounded Rectangle
      Top             =   6480
      Width           =   4335
   End
End
Attribute VB_Name = "FrmReturBeli"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




