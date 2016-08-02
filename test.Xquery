<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma  parameter="$PointsInfoRetrieveanyType" type="xs:anyType"  ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/PointsInfoRetrieve/transformations/FCOM_1654_PIRV2/";
declare namespace poin = "http://com.finnair/PointsInfoRetrieve/";
declare namespace get = "http://com.finnair/GetPointBalance";
declare namespace ns1 = "http://com.finnair";
declare namespace ns0 = "http://com.finnair/GetPointBalance";

declare function xf:FCOM_1654_PIRV2($PointsInfoRetrieveanyType as element(*))
    as element(ns1:IdentifyRQ) {
        &lt;ns1:IdentifyRQ>
            &lt;ns1:MemberNumber>{ $PointsInfoRetrieveanyType/poin:GetPointBalance/GetPointBalanceRequest/ns0:memberNumber/text() }&lt;/ns1:MemberNumber>
        &lt;/ns1:IdentifyRQ>
};

declare variable $PointsInfoRetrieveanyType as element() external;

xf:FCOM_1654_PIRV2($PointsInfoRetrieveanyType)</con:xquery>
</con:xqueryEntry>