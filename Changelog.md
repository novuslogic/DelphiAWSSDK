09/1/2002   

* Update for Delphi 10.4 and Delphi 11

18/03/2019

* Experimental Code-Generation based on CodeImatic.codegen 
* Support for Delphi 10.3  / C++Builder Rio

5/11/2018

* Fix samples paths to units.

5/11/20018

* New Lazarus CreateTable1 DynamoDB Sample
* Refactored Core for Lazarus / fpc 1.8 or higher 
* New exception "secret_key or access_key not assigned." in TAmazonClient.execute
* New exception "IAmazonRESTClient not assigned." in TAmazonClient.execute
* New exception "region not assigned.' in TAmazonClient.execute
* DateTimeToISO8601 and DeepCopy removed for Lazarus / fpc in unit 
* Moved Samples Samples\DynamoDB to Samples\DynamoDB\Delphi

03/09/2018

* Tested support for Windows 32/64Bit, MacOSX 32Bit
* Removed Windows unit from unit Amazon.Utils
* Added Region to TAmazonClient.Create


30/08/2018

* THashSHA2 supported in unit Amazon.Utils for Delphi XE8 and up.
* TidBytes reference change to Tbytes in unit Amazon.SignatureV4 for Delphi XE8 and up.
* Fixed support for Delphi XE to Delphi XE7

28/08/2018

* New RESTClient class TAmazonDelphiRestClient based on Delphi TRESTClient and TRESTHTTP. Note TAmazonSignatureV4 still requires OpenSSL Library
* Updated TAmazonIndyRestClient with latest IAmazonRESTClient interface
* New properties UserAgent, AcceptCharset, Accept in IAmazonRESTClient interface

23/08/2018

* Update DelphiVerion.inc which includes Delphi 10.2 support

19/08/2018

* Start of the Changelog
* Renamed Amazon.RESTClient.pas to Amazon.IndyRESTClient.pas and class TAmazonRESTClient to TAmazonIndyRESTClient 
* Fixed TAmazonMarshaller function GetSubRttiAttributekeys RTTI in Delphi XE8 moved from List To FObjectList: TObjectList<TObject>








