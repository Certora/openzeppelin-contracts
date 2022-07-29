certoraRun \
    certora/harnesses/ERC721VotesHarness.sol certora/munged/governance/TimelockController.sol certora/harnesses/GovernorPreventLateQuorumHarness.sol certora/harnesses/ERC20VotesHarness.sol \
    --verify GovernorPreventLateQuorumHarness:certora/specs/GovernorPreventLateQuorum.spec \
    --solc solc8.4 \
    --optimistic_loop \
    --loop_iter 1 \
    --msg "GovernorPreventLateQuorum verification all rules" \



