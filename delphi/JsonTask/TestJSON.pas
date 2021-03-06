unit TestJSON;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, System.Generics.Collections, MainClasses;

type
  // Test methods for class TDriverList

  TestTDriverList = class(TTestCase)
  strict private
    FDriverList: TDriverList;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure testLoadFromJSON;
  end;
  // Test methods for class TAutoList

  TestTAutoList = class(TTestCase)
  strict private
    FAutoList: TAutoList;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestLoadFromJSON;
  end;

implementation

procedure TestTDriverList.SetUp;
begin
  FDriverList := TDriverList.Create;
end;

procedure TestTDriverList.TearDown;
begin
  FDriverList.Free;
  FDriverList := nil;
end;

procedure TestTDriverList.testLoadFromJSON;
begin
  // implement this method
  //FDriverList.loadFromJSON
  Check(FDriverList.Count = 3);

  Check(FDriverList[0].Name = 'Frank Martin');
  Check(FDriverList[0].Phone = '555-0100');

  Check(FDriverList[1].Name = 'Travis Bickle');
  Check(FDriverList[1].Phone = '555-0123');

  Check(FDriverList[2].Name = 'Daniel Moralex');
  Check(FDriverList[2].Phone = '555-0130');
end;

procedure TestTAutoList.SetUp;
begin
  FAutoList := TAutoList.Create;
end;

procedure TestTAutoList.TearDown;
begin
  FAutoList.Free;
  FAutoList := nil;
end;

procedure TestTAutoList.TestLoadFromJSON;
begin
  // implement this method
  //FAutoList.loadFromJSON

  Check(FAutoList.Count = 3);

  Check(FAutoList[0].Brand = 'Peugeot');
  Check(FAutoList[0].Model = '406');
  Check(FAutoList[0].Color = 'White');

  Check(FAutoList[1].Brand = 'BMW');
  Check(FAutoList[1].Model = '735i');
  Check(FAutoList[1].Color = 'Brown');
  Check(FAutoList[1].Number = '930UHV06');

  Check(FAutoList[2].Brand = 'Checker Taxi');
  Check(FAutoList[2].Color = 'Yellow');

end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTDriverList.Suite);
  RegisterTest(TestTAutoList.Suite);
end.

