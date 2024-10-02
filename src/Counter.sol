// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Counter {
    struct Foo {
        bytes a;
        address b;
        bytes32 c;
        string d;
        bytes[] e;
        address[] f;
        bytes[][] g;
    }

    Foo[] internal foos;

    function foo(Foo[] calldata _foos) public {
        for (uint256 i = 0; i < _foos.length; i++) {
            foos.push(_foos[i]);
        }
    }

    function bar(
        bytes calldata _a,
        address _b,
        bytes32 _c,
        string calldata _d,
        bytes[] calldata _e,
        address[] calldata _f,
        bytes[][] calldata _g
    ) public {
        foos.push(Foo(_a, _b, _c, _d, _e, _f, _g));
    }

    function getFoo(uint256 _index)
        public
        view
        returns (bytes memory, address, bytes32, string memory, bytes[] memory, address[] memory, bytes[][] memory)
    {
        return (
            foos[_index].a,
            foos[_index].b,
            foos[_index].c,
            foos[_index].d,
            foos[_index].e,
            foos[_index].f,
            foos[_index].g
        );
    }
}
