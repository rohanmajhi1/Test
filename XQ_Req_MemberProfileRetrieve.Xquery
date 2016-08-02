<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:schema-type-parameter parameter="$getPointBalanceRequest" type="ns0:GetPointBalanceRequest" location="../../PortalInterfaces/schema/GetPointBalance.xsd" ::)
(:: pragma bea:global-element-return element="ns1:IdentifyRQ" location="../../PortalInterfaces/schema/IdentifyRQ.xsd" ::)

declare namespace ns1 = "http://com.finnair";
declare namespace ns0 = "http://com.finnair/GetPointBalance";
declare namespace xf = "http://tempuri.org/PointsInfoRetrieve/transformations/XQ_Req_MemberProfileRetrieve/";
declare namespace mem = "http://com.finnair/MemberProfileRetrieve/";
declare namespace poin = "http://com.finnair/PointsInfoRetrieve/";

declare function xf:XQ_Req_MemberProfileRetrieve($GetPointBalance as element(poin:GetPointBalance))
    as element() {
      <mem:Identify>
        <ns1:IdentifyRQ>
            <ns1:MemberNumber>{data($GetPointBalance[1]/GetPointBalanceRequest[1]/ns0:memberNumber[1])}</ns1:MemberNumber>
        </ns1:IdentifyRQ>
      </mem:Identify>
};

declare variable $GetPointBalance as element(poin:GetPointBalance) external;

xf:XQ_Req_MemberProfileRetrieve($GetPointBalance)]]></con:xquery>
    <con:dependency location="../../PortalInterfaces/schema/GetPointBalance.xsd">
        <con:schema ref="PortalInterfaces/schema/GetPointBalance"/>
    </con:dependency>
    <con:dependency location="../../PortalInterfaces/schema/IdentifyRQ.xsd">
        <con:schema ref="PortalInterfaces/schema/IdentifyRQ"/>
    </con:dependency>
</con:xqueryEntry>