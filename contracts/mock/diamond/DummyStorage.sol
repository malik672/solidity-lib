// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract DummyStorage {
    bytes32 public constant DUMMY_STORAGE_SLOT = keccak256("diamond.standard.dummyfacet.storage");

    struct DummyFacetStorage {
        string dummyString;
    }

    function getDummyFacetStorage() internal pure returns (DummyFacetStorage storage _ods) {
        bytes32 position_ = DUMMY_STORAGE_SLOT;

        assembly {
            _ods.slot := position_
        }
    }

    function getDummyString() external view returns (string memory dummyString_) {
        return getDummyFacetStorage().dummyString;
    }
}
