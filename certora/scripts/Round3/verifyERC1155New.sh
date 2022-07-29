make -C certora munged

certoraRun \
    certora/munged/token/ERC1155/ERC1155.sol \
    --verify ERC1155:certora/specs/ERC1155New.spec \
    --solc solc8.2 \
    --optimistic_loop \
    --loop_iter 3 \
    --msg "ERC1155 verification all rules "

