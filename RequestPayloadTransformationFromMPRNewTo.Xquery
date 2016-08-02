<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>xquery version "1.0" encoding "UTF-8";
(:: pragma  parameter="$MemberProfileRetreiveNewType" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/partnerServices/ValidateMember/transformations/RequestPayloadTransformationFromMPRNewToMPRV2_FCOM_1654/";
declare namespace mem = "http://com.finnair/MemberProfileRetrieve/";
declare namespace com = "http://com.finnair";	

declare function xf:RequestPayloadTransformationFromMPRNewToMPRV2_FCOM_1654($MemberProfileRetreiveNewType as element(*))
    as element(*) 
    {
        &lt;com:AMA_ProfileReadRQ xmlns:com="http://com.finnair" Version="10.2">
        {$MemberProfileRetreiveNewType/com:AMA_ProfileReadRQ/*}
        &lt;/com:AMA_ProfileReadRQ>
	};

declare variable $MemberProfileRetreiveNewType as element(*) external;

xf:RequestPayloadTransformationFromMPRNewToMPRV2_FCOM_1654($MemberProfileRetreiveNewType)</con:xquery>
</con:xqueryEntry>