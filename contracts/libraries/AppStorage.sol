// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./Counters.sol";

struct AppStorage {
    string _name;
    string _symbol;
    mapping(uint256 => address) _owners;
    mapping(address => uint256) _balances;
    mapping(uint256 => address) _tokenApprovals;
    mapping(address => mapping(address => bool)) _operatorApprovals;
    mapping(uint256 => string) _tokenURIs;
    Counters.Counter _myCounter;
    uint256 MAX_SUPPLY;
}

library LibAppStorage {
    function diamondStorage() internal pure returns (AppStorage storage ds) {
        assembly {
            ds.slot := 0
        }
    }
}
