unit WrapFmxGrids;

interface

uses
  FMX.Grid, WrapFmxControls;

type
  TPyDelphiColumn = class(TPyDelphiControl)
  private
    function  GetDelphiObject: TColumn;
    procedure SetDelphiObject(const Value: TColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TColumn read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiStringColumn = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TStringColumn;
    procedure SetDelphiObject(const Value: TStringColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TStringColumn read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiProgressColumn = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TProgressColumn;
    procedure SetDelphiObject(const Value: TProgressColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TProgressColumn read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiCheckColumn = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TCheckColumn;
    procedure SetDelphiObject(const Value: TCheckColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TCheckColumn read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiDateTimeColumnBase = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TDateTimeColumnBase;
    procedure SetDelphiObject(const Value: TDateTimeColumnBase);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TDateTimeColumnBase read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiDateTimeColumn = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TDateTimeColumn;
    procedure SetDelphiObject(const Value: TDateTimeColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TDateTimeColumn read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiTimeColumn = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TTimeColumn;
    procedure SetDelphiObject(const Value: TTimeColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TTimeColumn read GetDelphiObject write SetDelphiObject;
  end;

  TPyDelphiDateColumn = class(TPyDelphiColumn)
  private
    function  GetDelphiObject: TDateColumn;
    procedure SetDelphiObject(const Value: TDateColumn);
  public
    class function  DelphiObjectClass : TClass; override;
    // Properties
    property DelphiObject: TDateColumn read GetDelphiObject write SetDelphiObject;
  end;

implementation

uses
  WrapDelphi;

{ Register the wrappers, the globals and the constants }
type
  TGridsRegistration = class(TRegisteredUnit)
  public
    function Name : string; override;
    procedure RegisterWrappers(APyDelphiWrapper : TPyDelphiWrapper); override;
    procedure DefineVars(APyDelphiWrapper : TPyDelphiWrapper); override;
  end;

{ TGridsRegistration }

procedure TGridsRegistration.DefineVars(APyDelphiWrapper: TPyDelphiWrapper);
begin
  inherited;
end;

function TGridsRegistration.Name: string;
begin
  Result := 'Grids';
end;

procedure TGridsRegistration.RegisterWrappers(
  APyDelphiWrapper: TPyDelphiWrapper);
begin
  inherited;
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiColumn);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiStringColumn);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiProgressColumn);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiCheckColumn);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiDateTimeColumnBase);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiDateTimeColumn);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiTimeColumn);
  APyDelphiWrapper.RegisterDelphiWrapper(TPyDelphiDateColumn);
end;

{ TPyDelphiColumn }

class function TPyDelphiColumn.DelphiObjectClass: TClass;
begin
  Result := TColumn;
end;

function TPyDelphiColumn.GetDelphiObject: TColumn;
begin
  Result := TColumn(inherited DelphiObject);
end;

procedure TPyDelphiColumn.SetDelphiObject(const Value: TColumn);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiStringColumn }

class function TPyDelphiStringColumn.DelphiObjectClass: TClass;
begin
  Result := TStringColumn;
end;

function TPyDelphiStringColumn.GetDelphiObject: TStringColumn;
begin
  Result := TStringColumn(inherited DelphiObject);
end;

procedure TPyDelphiStringColumn.SetDelphiObject(const Value: TStringColumn);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiProgressColumn }

class function TPyDelphiProgressColumn.DelphiObjectClass: TClass;
begin
  Result := TProgressColumn;
end;

function TPyDelphiProgressColumn.GetDelphiObject: TProgressColumn;
begin
  Result := TProgressColumn(inherited DelphiObject);
end;

procedure TPyDelphiProgressColumn.SetDelphiObject(const Value: TProgressColumn);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiCheckColumn }

class function TPyDelphiCheckColumn.DelphiObjectClass: TClass;
begin
  Result := TCheckColumn;
end;

function TPyDelphiCheckColumn.GetDelphiObject: TCheckColumn;
begin
  Result := TCheckColumn(inherited DelphiObject);
end;

procedure TPyDelphiCheckColumn.SetDelphiObject(const Value: TCheckColumn);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiDateTimeColumnBase }

class function TPyDelphiDateTimeColumnBase.DelphiObjectClass: TClass;
begin
  Result := TDateTimeColumnBase;
end;

function TPyDelphiDateTimeColumnBase.GetDelphiObject: TDateTimeColumnBase;
begin
  Result := TDateTimeColumnBase(inherited DelphiObject);
end;

procedure TPyDelphiDateTimeColumnBase.SetDelphiObject(
  const Value: TDateTimeColumnBase);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiDateTimeColumn }

class function TPyDelphiDateTimeColumn.DelphiObjectClass: TClass;
begin
  Result := TDateTimeColumn;
end;

function TPyDelphiDateTimeColumn.GetDelphiObject: TDateTimeColumn;
begin
  Result := TDateTimeColumn(inherited DelphiObject);
end;

procedure TPyDelphiDateTimeColumn.SetDelphiObject(const Value: TDateTimeColumn);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiTimeColumn }

class function TPyDelphiTimeColumn.DelphiObjectClass: TClass;
begin
  Result := TTimeColumn;
end;

function TPyDelphiTimeColumn.GetDelphiObject: TTimeColumn;
begin
  Result := TTimeColumn(inherited DelphiObject);
end;

procedure TPyDelphiTimeColumn.SetDelphiObject(const Value: TTimeColumn);
begin
  inherited DelphiObject := Value;
end;

{ TPyDelphiDateColumn }

class function TPyDelphiDateColumn.DelphiObjectClass: TClass;
begin
  Result := TDateColumn;
end;

function TPyDelphiDateColumn.GetDelphiObject: TDateColumn;
begin
  Result := TDateColumn(inherited DelphiObject);
end;

procedure TPyDelphiDateColumn.SetDelphiObject(const Value: TDateColumn);
begin
  inherited DelphiObject := Value;
end;

initialization
  RegisteredUnits.Add(TGridsRegistration.Create);

end.
