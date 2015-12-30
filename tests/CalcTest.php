<?php

use App\Calc;
class CalcTest extends PHPUnit_Framework_TestCase
{
    /** @test */
    public function 足し算の計算ができること()
    {
        $calc = new Calc();
        var_dump($calc);
        $this->assertSame(13, $calc->addition(7, 6));
    }
}
