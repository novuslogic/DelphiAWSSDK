{********************************************************************}
{                                                                    }
{           DelphiVersions.inc                                       }
{                                                                    }
{           Apache License                                           }
{           Version 2.0, January 2004                                }
{           License at http://www.apache.org/licenses/               }
{                                                                    }
{                                                                    }
{           Copyright (c) 2017 - 2023 Novuslogic Software            }
{           http://www.novuslogic.com                                }
{                                                                    }
{********************************************************************}


(* https://docwiki.embarcadero.com/RADStudio/Athens/en/Compiler_Versions *)

(* Delphi 12 Athens / C++Builder 12 Athens / D29 *)
{$IFDEF VER360}
   {$DEFINE DELPHI12}
{$ENDIF}

(* Delphi 11 / C++Builder Delphi 11 Alexandria / D28 *)
{$IFDEF VER350}
   {$DEFINE DELPHI11}
{$ENDIF}

(* Delphi 10.4  / C++Builder Sydney / D27 *)
{$IFDEF VER340}
   {$DEFINE DELPHI10_4}
{$ENDIF}

(* Delphi 10.3  / C++Builder Rio / D26 *)
{$IFDEF VER330}
   {$DEFINE DELPHI10_3}
{$ENDIF}

(* Delphi 10.2 Tokyo / C++Builder Tokyo / D25 *)
{$IFDEF VER320}
   {$DEFINE DELPHI10_2}
{$ENDIF}

(* Delphi 10.1 Berlin / C++Builder Berlin / D24 *)
{$IFDEF VER310}
   {$DEFINE DELPHI10_1}
{$ENDIF}

(* Delphi 10 Seattle / C++Builder Seattle / D23 *)
{$IFDEF VER300}
  {$DEFINE DELPHI10}
{$ENDIF}

(* Delphi XE8 / C++Builder XE8 / D22 *)
{$IFDEF VER290}
  {$DEFINE DELPHIXE8}
{$ENDIF}

(* Delphi XE7 / C++Builder XE7 / D21 *)
{$IFDEF VER280}
  {$DEFINE DELPHIXE7}
{$ENDIF}

(* Delphi XE6 / C++Builder XE6 / D20 *)
{$IFDEF VER270}
  {$DEFINE DELPHIXE6}
{$ENDIF}

(* Delphi XE5 / C++Builder XE5 / D19 *)
{$IFDEF VER260}
  {$DEFINE DELPHIXE5}
{$ENDIF}

(* Delphi XE4 / C++Builder XE4 / D18 *)
{$IFDEF VER250}
  {$DEFINE DELPHIXE4}
{$ENDIF}

(* Delphi XE3 / C++Builder XE3 / D17 *)
{$IFDEF VER240}
  {$DEFINE DELPHIXE3}
{$ENDIF}

(* Delphi XE2 / C++Builder XE2 / D16 *)
{$IFDEF VER230}
  {$DEFINE DELPHIXE2}
{$ENDIF}

(* Delphi XE / C++Builder XE (Win32) / D15 *)
{$IFDEF VER220}
   {$DEFINE DELPHIXE}
{$ENDIF}

(* Delphi 2010 / C++Builder 2010 (Win32) / D16 *)
{$IFDEF VER210}
   {$DEFINE DELPHI2010}
{$ENDIF}

(* Delphi 2009 / C++Builder 2009 (Win32) D15 *)
{$IFDEF VER200}
   {$DEFINE DELPHI2009}
{$ENDIF}

(* Delphi 2007 / C++Builder 2007 for Win32 D14 *)
{$IFDEF VER180}
   {$DEFINE DELPHI2007}
{$ENDIF}
{$IFDEF VER185}
   {$DEFINE DELPHI2007_1}
{$ENDIF}

{$IFDEF DELPHI12}
   {$DEFINE DELPHI12_UP}
   {$DEFINE DELPHI11_UP}
   {$DEFINE DELPHI10_4_UP}
   {$DEFINE DELPHI10_3_UP}
   {$DEFINE DELPHI10_2_UP}
   {$DEFINE DELPHI10_1_UP}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI11}
   {$DEFINE DELPHI11_UP}
   {$DEFINE DELPHI10_4_UP}
   {$DEFINE DELPHI10_3_UP}
   {$DEFINE DELPHI10_2_UP}
   {$DEFINE DELPHI10_1_UP}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}


{$IFDEF DELPHI10_4}
   {$DEFINE DELPHI10_4_UP}
   {$DEFINE DELPHI10_3_UP}
   {$DEFINE DELPHI10_2_UP}
   {$DEFINE DELPHI10_1_UP}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI10_3}
   {$DEFINE DELPHI10_3_UP}
   {$DEFINE DELPHI10_2_UP}
   {$DEFINE DELPHI10_1_UP}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI10_2}
   {$DEFINE DELPHI10_2_UP}
   {$DEFINE DELPHI10_1_UP}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI10_1}
   {$DEFINE DELPHI10_1_UP}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI10}
   {$DEFINE DELPHI10_UP}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE8}
   {$DEFINE DELPHIXE8_UP}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE7}
   {$DEFINE DELPHIXE7_UP}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE6}
   {$DEFINE DELPHIXE6_UP}
   {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE5}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE4}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE3}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE2}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHIXE}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI2010}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}

{$IFDEF DELPHI2009}
  {$DEFINE DELPHI2009_UP}
{$ENDIF}
