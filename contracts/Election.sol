// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Election {
    struct Candidate {
        uint256 id;
        uint256 voteCount;
        string name;
    }

    mapping(uint256 => Candidate) public candidates;

    uint256 public candidatesCount;

    constructor() {
        // candidatesCount = 0;
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, 0, _name);
    }
}
