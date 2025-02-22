// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {StringSet} from "../../../libs/data-structures/StringSet.sol";
import {SetHelper} from "../../../libs/arrays/SetHelper.sol";

contract SetHelperMock {
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;
    using StringSet for StringSet.Set;
    using SetHelper for StringSet.Set;
    using SetHelper for EnumerableSet.UintSet;
    using SetHelper for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet internal addressSet;
    EnumerableSet.UintSet internal uintSet;
    StringSet.Set internal stringSet;

    function addToAddressSet(address[] memory arr_) external {
        addressSet.add(arr_);
    }

    function addToUintSet(uint256[] memory arr_) external {
        uintSet.add(arr_);
    }

    function addToStringSet(string[] memory arr_) external {
        stringSet.add(arr_);
    }

    function removeFromAddressSet(address[] memory arr_) external {
        addressSet.remove(arr_);
    }

    function removeFromUintSet(uint256[] memory arr_) external {
        uintSet.remove(arr_);
    }

    function removeFromStringSet(string[] memory arr_) external {
        stringSet.remove(arr_);
    }

    function getAddressSet() external view returns (address[] memory) {
        return addressSet.values();
    }

    function getUintSet() external view returns (uint256[] memory) {
        return uintSet.values();
    }

    function getStringSet() external view returns (string[] memory) {
        return stringSet.values();
    }
}
