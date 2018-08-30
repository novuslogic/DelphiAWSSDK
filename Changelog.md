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


