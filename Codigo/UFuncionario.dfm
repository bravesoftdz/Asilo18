object Funcionario: TFuncionario
  Left = 381
  Top = 307
  Width = 409
  Height = 314
  Caption = 'Funcionario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 24
    Height = 13
    Caption = 'Sexo'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 48
    Top = 48
    Width = 97
    Height = 13
    Caption = 'Data de Nascimento'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 192
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Idade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 16
    Top = 89
    Width = 36
    Height = 13
    Caption = 'Fun'#231#227'o'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 16
    Top = 128
    Width = 32
    Height = 13
    Caption = 'Salario'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 16
    Top = 168
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 120
    Top = 168
    Width = 16
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 216
    Top = 168
    Width = 96
    Height = 13
    Caption = 'Carteira de Trabalho'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 16
    Top = 216
    Width = 32
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 208
    Top = 216
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit12
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 20
    Height = 21
    DataField = 'COD_FUN'
    DataSource = Modulo.dsFun
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 24
    Width = 300
    Height = 21
    DataField = 'NOME'
    DataSource = Modulo.dsFun
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 64
    Width = 17
    Height = 21
    DataField = 'SEXO'
    DataSource = Modulo.dsFun
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 48
    Top = 64
    Width = 134
    Height = 21
    DataField = 'DATANASCIMENTO'
    DataSource = Modulo.dsFun
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 192
    Top = 64
    Width = 43
    Height = 21
    DataField = 'IDADE'
    DataSource = Modulo.dsFun
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 105
    Width = 337
    Height = 21
    DataField = 'FUNCAO'
    DataSource = Modulo.dsFun
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 144
    Width = 89
    Height = 21
    DataField = 'SALARIO'
    DataSource = Modulo.dsFun
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 16
    Top = 184
    Width = 97
    Height = 21
    DataField = 'CPF'
    DataSource = Modulo.dsFun
    MaxLength = 14
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 120
    Top = 184
    Width = 89
    Height = 21
    DataField = 'RG'
    DataSource = Modulo.dsFun
    MaxLength = 9
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 216
    Top = 184
    Width = 137
    Height = 21
    DataField = 'CARTEIRATRABALHO'
    DataSource = Modulo.dsFun
    MaxLength = 15
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 16
    Top = 232
    Width = 186
    Height = 21
    DataField = 'CELULAR'
    DataSource = Modulo.dsFun
    MaxLength = 14
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 208
    Top = 232
    Width = 145
    Height = 21
    DataField = 'TELEFONE'
    DataSource = Modulo.dsFun
    MaxLength = 13
    TabOrder = 11
  end
end
