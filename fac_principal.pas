unit fac_principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Spin;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnCalcular: TButton;
    txtTit1: TLabel;
    txtTit2: TLabel;
    memInfo: TMemo;
    memResultados: TMemo;
    spnNumero: TSpinEdit;
    procedure btnCalcularClick(Sender: TObject);
    function Factorial(n: Integer): Integer;
    procedure spnNumeroChange(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  memResultados.Lines.Add('El factorial de ' + IntToStr(spnNumero.Value) + ' es ' + IntToStr(Factorial(spnNumero.Value)));
end;

function TfrmPrincipal.Factorial(n: Integer): Integer;
begin
  // Caso base: si n es igual a 0 o 1, entonces el factorial es 1
  if n = 0 then
    Result := 1
  else
    Result := n * Factorial(n - 1);
end;

procedure TfrmPrincipal.spnNumeroChange(Sender: TObject);
begin

end;

end.

