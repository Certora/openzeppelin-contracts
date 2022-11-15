#!/usr/bin/env bash

set -euxo pipefail

certoraRun \
    certora/harnesses/ERC721VotesHarness.sol certora/munged/utils/Checkpoints.sol \
    --verify ERC721VotesHarness:certora/specs/ERC721Votes.spec \
    --optimistic_loop \
    --disableLocalTypeChecking \
    --settings -copyLoopUnroll=4 \
    $@
