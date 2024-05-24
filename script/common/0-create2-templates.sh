#!/bin/bash

echo "create2 ERC721C Airdrop Basic Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/airdrop/basic-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Airdrop Immutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/airdrop/immutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Airdrop Mutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/airdrop/mutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Airdrop Shared Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/airdrop/shared-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Merkle Basic Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/merkle/basic-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Merkle Immutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/merkle/immutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Merkle Mutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/merkle/mutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 ERC721C Merkle Shared Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/erc721c/merkle/shared-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Airdrop Basic Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/airdrop/basic-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Airdrop Immutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/airdrop/immutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Airdrop Mutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/airdrop/mutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Airdrop Shared Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/airdrop/shared-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Merkle Basic Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/merkle/basic-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Merkle Immutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/merkle/immutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Merkle Mutable Minter Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/merkle/mutable-minter-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""

echo "create2 Adventure ERC721C Merkle Shared Royalties"
cast create2 --starts-with 00721C --case-sensitive --init-code "$(forge inspect src/templates/cloneable/adventure-erc721c/merkle/shared-royalties/NFT.sol:NFT bytecode)"
echo "-------------------------------------"
echo ""