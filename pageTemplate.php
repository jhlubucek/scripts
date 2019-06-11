<?php
namespace Page;

use \Codeception\Util\Locator;

class CLASSNM
{
    // include url of current page
    public static $URL = '/provize-spolupracovniku';
    public static $AssociateFieldText = "//*[@id=\"ftr\"]";
	public static $Class = "";



    /**
     * Declare UI map for this page here. CSS or XPath allowed.
     * public static $usernameField = '#username';
     * public static $formSubmitButton = "#mainForm input[type=submit]";
     */

    /**
     * Basic route example for your current URL
     * You can append any additional parameter to URL
     * and use it in tests like: Page\Edit::route('/123-post');
     */
    public static function route($param)
    {
        return static::$URL.$param;
    }

    public function __construct(\AcceptanceTester $I)
    {
        $this->tester = $I;
    }

    public function checkElements()
    {
        $I = $this->tester;

        $I->amOnPage(self::$URL);

        //obecne elementy
        $elements = [
        ];


        //kontrola elementu
        foreach ( $elements as $element)
        {
            $I->seeElement($element);
        }

        //$I->seeElement(Locator::find('a', ['class' => self::$ExportButtonClass]));
        //$I->seeElement(Locator::combine(self::$ProductFieldtext, self::$ProductFieldCombobox));
    }
}
