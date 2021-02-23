-- ###########################################################################
-- #DISCLAIMER OF WARRANTIES.
-- #The following IBM Content Manager Enterprise Edition code is sample code
-- #created by IBM Corporation.IBM grants you a nonexclusive copyright license
-- #to use this sample code example to generate similar function tailored to
-- #your own specific needs.This sample code is not part of any standard IBM
-- #product and is provided to you solely for the purpose of assisting you in
-- #the development of your applications. This example has not been thoroughly
-- #tested under all conditions.IBM, therefore cannot guarantee nor may you
-- #imply reliability, serviceability, or function of these programs.
-- #The code is provided "AS IS", without warranty of any kind.
-- #IBM shall not be liable for any damages arising out of your or any other
-- #parties use of the sample code, even if IBM has been advised of the
-- #possibility of such damages.If you do not agree with these terms,
-- #do not use the sample code.
-- ###########################################################################
-- #Licensed Materials - Property of IBM
-- #5724-B19 / 5697-H60
-- #Copyright IBM Corp. 1994, 2011 All Rights Reserved.
-- #(C) COPYRIGHT UNICOM Systems, Inc. 2020 - All Rights Reserved.
-- #US Government Users Restricted Rights -
-- #Use, duplication or disclosure
-- #restricted by GSA ADP Schedule Contract with IBM Corp.
-- ###########################################################################
-- #
-- # MODULE: icmaclxt_plsql.sql
-- # Program Name: icmaclxt_plsql.sql     (ICMACLPrivExit      )
-- # Guidelines:
-- #    Function name: ICMACLPrivExit
-- #    Directory: Samples directory on CM installed workstation
-- #                       e.g. <IBMCMROOT>/samples/server/exit
-- #
-- # Input Params :
-- #      CHAR     *szUserID         - User ID
-- #      CHAR     *szApplID  	     - Application ID
-- #      CHAR     *szHostname       - Hostname of Client
-- #      INTEGER * lAPIAction,      - API Action: 0-retrieve 1-insert
-- #                                           2-update   3-delete 4-not_available
-- #      CHAR     *szProcName       - LS Stored Procedure Name
-- #      INTEGER *lInfoType         - 1-item_related 2-view_related
-- #                                           3-itemtype_or_itemtypeview_related
-- #      CHAR     *szItemID         - Item ID
-- #      INTEGER  *lViewID          - ItemType ID or ItemTypeView ID or View ID
-- #      INTEGER  *lPrivCode        -  Privilege required for this action
-- #
-- #
-- #
-- # Returns:  lRC
-- #
-- # Return Codes:
-- #    0   - RC_OK -- Validation Ok. ICMACLPrivExit UE will grant ACL to query
-- #
-- #      Any other return code will decline access to the ACL query
-- #
-- # Description: Use this exit routine to determine whether the user has authority
-- #              to perform the requested function on a particular item or view
-- #
-- # Dependencies:
-- #
-- # Restrictions:
-- #
-- # Notes:
-- #
-- # @endCopyright
-- ##############################################

/*************************************************************************
*  function ICMACLPrivExit:
*
*     input:  VARCHAR2        szUserID
*             VARCHAR2        szApplID
*             VARCHAR2        szHostname
*             BINARY_INTEGER  lAPIAction
*             VARCHAR2        szProcName
*             BINARY_INTEGER  lInfoType
*             CHAR            szItemID
*             BINARY_INTEGER  lViewID
*             BINARY_INTEGER  lPrivCode
*
*     output: BINARY_INTEGER  lRC
*             output lRC=0 to GRANT Access, any other value for failure
**************************************************************************/
create or replace function ICMACLPRIVEXIT
(
   szUserID   IN  VARCHAR2,
   szApplID   IN  VARCHAR2,
   szHostName IN  VARCHAR2,
   lAPIAction IN  BINARY_INTEGER,
   szProcName IN  VARCHAR2,
   lInfoType  IN  BINARY_INTEGER,
   szItemID   IN  CHAR,
   lViewID    IN  BINARY_INTEGER,
   lPrivCode  IN  BINARY_INTEGER
)
return BINARY_INTEGER as
   lRC BINARY_INTEGER := 0;
begin
   -- Replace sample code below with actual user exit code
   if szUserID IS NULL then
      lRC := -1;
   else
      lRC := 0;
   end if;

   -- signal successful completion by leaving sqlstate as is
   -- and exit
   return lRC;
end;
/
quit
