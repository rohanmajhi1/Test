<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-return element="ns0:AMA_ProfileReadRQ" location="../MemberProfileRetrieve/AMA_ProfileReadRQ.xsd" ::)

declare namespace xf = "http://tempuri.org/partnerServices/MiddlewareInterfaces/transformations/XQ_Req_MemberProfileRetrieve_GetProfile/";
declare namespace ns0 = "http://com.finnair";
declare namespace mem = "http://com.finnair/MemberProfileRetrieve/";

declare function xf:Wrap($e as element())
    as element() {
        <mem:GetProfile>
	    	{$e}
        </mem:GetProfile>
};

declare function xf:XQ_Req_MemberProfileRetrieve_GetProfile($memberNumber as xs:string)
    as element(ns0:AMA_ProfileReadRQ) {
        <ns0:AMA_ProfileReadRQ Version = "10.2">
            <ns0:UniqueID Type = "21"
                          ID = "{ $memberNumber }"
                          ID_Context = "LOYALTYNUMBER"/>
            <ns0:ReadRequests>
                <ns0:ProfileReadRequest ProfileType = "1"/>
            </ns0:ReadRequests>
        </ns0:AMA_ProfileReadRQ>
};

declare variable $memberNumber as xs:string external;

xf:Wrap(xf:XQ_Req_MemberProfileRetrieve_GetProfile($memberNumber))]]></con:xquery>
    <con:dependency location="../MemberProfileRetrieve/AMA_ProfileReadRQ.xsd">
        <con:schema ref="partnerServices/MiddlewareInterfaces/MemberProfileRetrieve/AMA_ProfileReadRQ"/>
    </con:dependency>
</con:xqueryEntry>