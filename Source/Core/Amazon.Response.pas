unit Amazon.Response;

interface

Uses Amazon.Interfaces;

type
  TAmazonResponse = class(TInterfacedObject, IAmazonResponse)
  private
    firesponsecode: Integer;
    fsreponsetext: UTF8String;
    fsresponse: UTF8String;
  protected
    procedure setresponsecode(value: Integer);
    procedure setreponsetext(value: UTF8String);
    procedure setreponse(value: UTF8String);
    function getresponsecode: Integer;
    function getreponsetext: UTF8String;
    function getreponse: UTF8String;
  public
    property ResponseText: UTF8String read getreponsetext write setreponsetext;
    property ResponseCode: Integer read getresponsecode write setresponsecode;
    property Response: UTF8String read getreponse write setreponse;
  end;

implementation

procedure TAmazonResponse.setresponsecode(value: Integer);
begin
  firesponsecode := value;
end;

procedure TAmazonResponse.setreponsetext(value: UTF8String);
begin
  fsreponsetext := value;
end;

procedure TAmazonResponse.setreponse(value: UTF8String);
begin
  fsresponse := value;
end;

function TAmazonResponse.getresponsecode: Integer;
begin
  result := firesponsecode;
end;

function TAmazonResponse.getreponsetext: UTF8String;
begin
  result := fsreponsetext;
end;

function TAmazonResponse.getreponse: UTF8String;
begin
  result := fsresponse;
end;

end.
