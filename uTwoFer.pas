
function TwoFer(const AName: string): string;
var
  Participant: string;
begin
  if AName <> '' then
    Participant := AName
  else
    Participant := 'you';

  Result := 'One for ' + Participant + ', one for me.';
end;

