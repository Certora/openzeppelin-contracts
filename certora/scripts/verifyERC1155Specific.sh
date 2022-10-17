make -C certora munged

certoraRun \
    certora/munged/token/ERC1155/ERC1155.sol \
    --verify ERC1155:certora/specs/ERC1155.spec \
    --solc solc8.2 \
    --optimistic_loop \
    --loop_iter 3 \
    --cloud \
    --rule $1 \
    --msg "ERC1155 Burnable verification specific rule $1"
    
