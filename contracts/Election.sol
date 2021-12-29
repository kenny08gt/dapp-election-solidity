// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Election {
    struct Candidate {
        uint256 id;
        uint256 voteCount;
        string name;
    }

    mapping(uint256 => Candidate) public candidates;
    mapping(address => bool) public voters;

    uint256 public candidatesCount;

    event votedEvent(uint256 indexed _candidateId);

    constructor() {
        // candidatesCount = 0;
        addCandidate("Pizza");
        addCandidate("Burguer");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, 0, _name);
    }

    function vote(uint256 _candidateId) public {
        require(!voters[msg.sender], "alreayd voted");

        require(
            _candidateId > 0 && _candidateId <= candidatesCount,
            "not valid candidate id"
        );

        voters[msg.sender] = true;

        candidates[_candidateId].voteCount++;

        emit votedEvent(_candidateId);
    }
}
