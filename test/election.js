var Election = artifacts.require("./Election.sol");

contract("Election", function (accounts) {
  var electionInstance;

  it("initializes with two candidates", function () {
    return Election.deployed()
      .then(function (instance) {
        return instance.candidatesCount();
      })
      .then(function (count) {
        assert.equal(count.toString(), 2);
      });
  });

  it("it initializes the candidates with the correct values", function () {
    return Election.deployed()
      .then(function (instance) {
        electionInstance = instance;
        return electionInstance.candidates(1);
      })
      .then(function (candidate) {
        assert.equal(candidate[0].toString(), 1, "contains the correct id");
        assert.equal(
          candidate[2].toString(),
          "Candidate 1",
          "contains the correct name"
        );
        assert.equal(
          candidate[1].toString(),
          0,
          "contains the correct votes count"
        );
        return electionInstance.candidates(2);
      })
      .then(function (candidate) {
        assert.equal(candidate[0].toString(), 2, "contains the correct id");
        assert.equal(
          candidate[2].toString(),
          "Candidate 2",
          "contains the correct name"
        );
        assert.equal(
          candidate[1].toString(),
          0,
          "contains the correct votes count"
        );
      });
  });
});
