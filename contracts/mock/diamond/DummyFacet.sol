// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {DummyStorage} from "./DummyStorage.sol";

contract DummyFacet is DummyStorage {
    function setDummyString(string calldata dummyString_) external {
        getDummyFacetStorage().dummyString = dummyString_;
    }

    receive() external payable {}
}
