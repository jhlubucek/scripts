<?php
// @group admin
// @group check
/**
 * @group CCSTest
 */

use Page\LoginPage as LoginPage;
use Page\PGNM as PGNM;


//codecept run --env pre.bhold acceptance CommissionBudgetedToBrokersAdminCheckCept.php --steps
//https://jira.bootiq.io/browse/FINN-NUM


$I = new AcceptanceTester($scenario);
$I->wantTo('Zkontrolovat elementy na strance "PGNAME" jako Admin');

//pages
$LoginPage = new LoginPage($I);
$PGNM = new PGNM($I);

//login
$LoginPage->loginAdmin();
//check
$PGNM->checkElements();





