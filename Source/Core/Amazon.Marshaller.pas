unit Amazon.Marshaller;

interface

uses System.Rtti, System.TypInfo, System.Classes, System.StrUtils,
  System.SysUtils,
  Amazon.Utils, Amazon.Interfaces, Generics.Collections;

type
  TAmazonMarshallerAttribute = class(TCustomAttribute)
  private
    fsTagName: string;
  public
    constructor Create(const aTagName: string);
    property TagName: string read fsTagName write fsTagName;
  end;

  TAmazonMarshaller = class(TInterfacedObject, IAmazonMarshaller)
  protected
  private
    procedure CloseJSONArray(var aJSON: TStringList;
      aCloseBracket: UTF8String = ']'; aIsClass: Boolean = false);
    procedure OpenJSONArray(var aJSON: TStringList; aParentTagName: UTF8String;
      aOpenBracket: UTF8String = '[');
    procedure AddJSONArray(var aJSON: TStringList;
      fsTagName, fsTagValue: UTF8String);
    procedure AddJSONString(aTypeKind: TTypeKind; var aJSON: TStringList;
      aTagName, aTagValue: UTF8String; aIsClass: Boolean;
      var aIsOpenBracket: Boolean; aIsListJSONArray: Boolean = false;
      aIsSubOpenBracket: Boolean = false);
    function IsAnyKindOfGenericList(AType: TRttiType): Boolean;
  public
    procedure GetSubRttiAttributekeys(var aJSON: TStringList;
      aParentTagName: string; aCtx: TRttiContext; aObject: TObject;
      aIsClass: Boolean = false; aIsOpenBracket: Boolean = false;
      aIsListJSONArray: Boolean = false);

  end;

implementation

constructor TAmazonMarshallerAttribute.Create(const aTagName: string);
begin
  fsTagName := aTagName;
end;

procedure TAmazonMarshaller.GetSubRttiAttributekeys(var aJSON: TStringList;
  aParentTagName: string; aCtx: TRttiContext; aObject: TObject;
  aIsClass: Boolean = false; aIsOpenBracket: Boolean = false;
  aIsListJSONArray: Boolean = false);
var
  I: Integer;
  prop: TRttiProperty;
  fsTagName, fsTagValue, fsPropName: UTF8String;
  a: TCustomAttribute;
  fRttiType: TRttiType;
  val: TValue;
  // FList: Tlist;
  FObject: TObject;
  FIsSubOpenBracket: Boolean;
  FObjectList: TObjectList<TObject>;
begin
  FIsSubOpenBracket := false;

  if aIsClass then
  begin
    if IsAnyKindOfGenericList(aCtx.GetType(aObject.ClassType)) then
    begin
      // FList := Tlist(aObject);
      FObjectList := TObjectList<TObject>(aObject);

      OpenJSONArray(aJSON, aParentTagName);

      for I := 0 to FObjectList.Count - 1 do
      begin
        FObject := FObjectList[I];

        // FObject := TObject(FList.Items[i]);

        GetSubRttiAttributekeys(aJSON, aParentTagName, aCtx, FObject, false,
          true, true);
      end;

      CloseJSONArray(aJSON);

      Exit;
    end
    else
    begin
      OpenJSONArray(aJSON, aParentTagName, '{');
      aIsOpenBracket := true;
    end;
  end
  else if aIsListJSONArray then
  begin
    OpenJSONArray(aJSON, '', '{');
    FIsSubOpenBracket := true;
    aIsOpenBracket := false;
  end;

  for prop in aCtx.GetType(aObject.ClassType).GetProperties do
  begin
    fsPropName := prop.Name;

    for a in prop.GetAttributes do
    begin
      fsTagName := TAmazonMarshallerAttribute(a).TagName;

      fRttiType := prop.PropertyType;

      case fRttiType.TypeKind of
        tkInteger, tkLString, tkWString, tkString:
          begin
            val := prop.GetValue(aObject);

            fsTagValue := val.ToString;

            AddJSONString(fRttiType.TypeKind, aJSON, fsTagName, fsTagValue,
              aIsClass, aIsOpenBracket, aIsListJSONArray, FIsSubOpenBracket);

          end;

        tkClass:
          begin
            val := prop.GetValue(aObject);

            GetSubRttiAttributekeys(aJSON, fsTagName, aCtx, val.AsObject, true);
          end;

      end;

      FIsSubOpenBracket := false;
    end;
  end;

  if aIsClass then
    CloseJSONArray(aJSON, '}', aIsClass)
  else if aIsListJSONArray then
  begin
    FIsSubOpenBracket := false;
    CloseJSONArray(aJSON, '}', false);
  end;

end;

function TAmazonMarshaller.IsAnyKindOfGenericList(AType: TRttiType): Boolean;
begin
  Result := false;
  while AType <> nil do
  begin
    Result := StartsText('TList<', AType.Name);
    if Result then
      Exit;
    AType := AType.BaseType;
  end;
end;

procedure TAmazonMarshaller.AddJSONString(aTypeKind: TTypeKind;
  var aJSON: TStringList; aTagName, aTagValue: UTF8String; aIsClass: Boolean;
  var aIsOpenBracket: Boolean; aIsListJSONArray: Boolean = false;
  aIsSubOpenBracket: Boolean = false);
Var
  lsJSONLine: UTF8String;
begin
  case aTypeKind of
    tkInteger:
      begin
        lsJSONLine := DoubleQuotedStr(aTagName) + ':' + aTagValue;
      end

  else
    lsJSONLine := DoubleQuotedStr(aTagName) + ':' + DoubleQuotedStr(aTagValue);
  end;

  If not aIsClass then
  begin
    if aJSON.Count > 0 then
    begin
      if aIsListJSONArray then
      begin
        if not aIsSubOpenBracket then
          aJSON.Strings[aJSON.Count - 1] := aJSON.Strings[aJSON.Count - 1] + ','

      end
      else if Not aIsOpenBracket then
        aJSON.Strings[aJSON.Count - 2] := aJSON.Strings[aJSON.Count - 2] + ','

    end;

    aJSON.Add(lsJSONLine);

  end
  else
  begin
    if aIsOpenBracket then
    begin
      aJSON.Strings[aJSON.Count - 1] := aJSON.Strings[aJSON.Count - 1] +
        lsJSONLine;
      aIsOpenBracket := false;
    end
    else
      aJSON.Strings[aJSON.Count - 1] := aJSON.Strings[aJSON.Count - 1] + ',' +
        lsJSONLine;
  end;

end;

procedure TAmazonMarshaller.AddJSONArray(var aJSON: TStringList;
  fsTagName, fsTagValue: UTF8String);
Var
  lsJSONLine: UTF8String;
begin
  lsJSONLine := '{' + DoubleQuotedStr(fsTagName) + ':' +
    DoubleQuotedStr(fsTagValue) + '}';

  aJSON.Add(lsJSONLine);
end;

procedure TAmazonMarshaller.OpenJSONArray(var aJSON: TStringList;
  aParentTagName: UTF8String; aOpenBracket: UTF8String = '[');
Var
  lsJSONLine: UTF8String;
begin
  if aParentTagName <> '' then
  begin
    lsJSONLine := '"' + aParentTagName + '": ' + aOpenBracket;

    if aJSON.Count > 0 then
    begin
      aJSON.Strings[aJSON.Count - 1] := aJSON.Strings[aJSON.Count - 1] + ',';

    end
  end
  else
    lsJSONLine := aOpenBracket;

  aJSON.Add(lsJSONLine);
end;

procedure TAmazonMarshaller.CloseJSONArray(var aJSON: TStringList;
  aCloseBracket: UTF8String = ']'; aIsClass: Boolean = false);
begin
  if Not aIsClass then
    aJSON.Add(aCloseBracket)
  else
    aJSON.Strings[aJSON.Count - 1] := aJSON.Strings[aJSON.Count - 1] +
      aCloseBracket;
end;

end.
