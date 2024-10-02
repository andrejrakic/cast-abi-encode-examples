// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function test_foo_bar() public {
        bytes memory a = hex"0a";
        address b = address(this);
        bytes32 c = hex"1234";
        string memory d = "This is string";
        bytes[] memory e = new bytes[](3);
        e[0] = hex"aabb";
        e[1] = hex"ccdd";
        e[2] = hex"eeff";
        address[] memory f = new address[](3);
        f[0] = address(1);
        f[1] = address(2);
        f[2] = address(3);
        bytes[][] memory g = new bytes[][](3);
        g[0] = new bytes[](3);
        g[0][0] = hex"11";
        g[0][1] = hex"22";
        g[0][2] = hex"33";
        g[1] = new bytes[](3);
        g[1][0] = hex"44";
        g[1][1] = hex"55";
        g[1][2] = hex"66";

        Counter.Foo[] memory foos = new Counter.Foo[](1);
        foos[0].a = a;
        foos[0].b = b;
        foos[0].c = c;
        foos[0].d = d;
        foos[0].e = e;
        foos[0].f = f;
        foos[0].g = g;

        counter.foo(foos);
        counter.bar(a, b, c, d, e, f, g);

        (
            bytes memory _a,
            address _b,
            bytes32 _c,
            string memory _d,
            bytes[] memory _e,
            address[] memory _f,
            bytes[][] memory _g
        ) = counter.getFoo(0);

        console.logBytes(_a);
        console.logAddress(_b);
        console.logBytes32(_c);
        console.logString(_d);
        console.logBytes(_e[0]);
        console.logBytes(_e[1]);
        console.logBytes(_e[2]);
        console.logAddress(_f[0]);
        console.logAddress(_f[1]);
        console.logAddress(_f[2]);
        console.logBytes(_g[0][0]);
        console.logBytes(_g[0][1]);
        console.logBytes(_g[0][2]);
        console.logBytes(_g[1][0]);
        console.logBytes(_g[1][1]);
        console.logBytes(_g[1][2]);

        (_a, _b, _c, _d, _e, _f, _g) = counter.getFoo(1);

        console.logBytes(_a);
        console.logAddress(_b);
        console.logBytes32(_c);
        console.logString(_d);
        console.logBytes(_e[0]);
        console.logBytes(_e[1]);
        console.logBytes(_e[2]);
        console.logAddress(_f[0]);
        console.logAddress(_f[1]);
        console.logAddress(_f[2]);
        console.logBytes(_g[0][0]);
        console.logBytes(_g[0][1]);
        console.logBytes(_g[0][2]);
        console.logBytes(_g[1][0]);
        console.logBytes(_g[1][1]);
        console.logBytes(_g[1][2]);
    }
}
