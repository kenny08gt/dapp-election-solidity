// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Election {
    struct Candidate {
        uint256 id;
        uint256 voteCount;
        string name;
    }

    constructor() {}
}
