unit U_Operaciones;

interface

// uses

type

  // Clase LeerDatos
  TLeerDatos = class(TObject)
    private
      fA, fB : Double;
    public
      procedure leerA(a : Double);
      procedure leerB(b : Double);
    end;

  // el equivalente de class suma extends LeerDatos () {}
  // Clase TSuma
  TSuma = class(TLeerDatos) // Herencia: hereda las propiedades y metodos de LeerDatos
    private

    // el equivalente de
    // public Double sumar () {}
    public
      function sumar : Double;
  end;

  // Clase TResta
  TResta = class(TLeerDatos)
    private

    public
      function resta : Double;
  end;

implementation
{ TLeerDatos }
// este es el equivalente a un void
procedure TLeerDatos.leerA(a : Double);
begin
  fA := a;
end;

procedure TLeerDatos.leerB(b : Double);
begin
  fB := b;
end;

function TSuma.sumar : Double;
begin
  Result := fA + fB; // El result es como el return
end;

function TResta.resta : Double;
begin
  Result := fA - fB;
end;

end.
