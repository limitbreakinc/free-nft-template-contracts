// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "../../ERC721CMetadata.sol";
import "@limitbreak/creator-token-contracts/contracts/minting/MerkleWhitelistMint.sol";
import "@limitbreak/creator-token-contracts/contracts/programmable-royalties/MinterCreatorSharedRoyalties.sol";

contract FreeNFT is 
    ERC721CMetadata, 
    MerkleWhitelistMint,
    MinterCreatorSharedRoyalties {

    struct SharedRoyaltyConfiguration {
        uint256 royaltyFeeNumerator;
        uint256 minterShares;
        uint256 creatorShares;
        address creator;
    }

    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        SharedRoyaltyConfiguration memory sharedRoyaltyConfiguration_)
    ERC721CMetadata(name_, symbol_)
    MaxSupply(maxSupply_, maxOwnerMints_)
    MerkleWhitelistMint(maxMerkleMints_, permittedNumberOfMerkleRootChanges_) 
    MinterCreatorSharedRoyalties(
        sharedRoyaltyConfiguration_.royaltyFeeNumerator, 
        sharedRoyaltyConfiguration_.minterShares, 
        sharedRoyaltyConfiguration_.creatorShares, 
        sharedRoyaltyConfiguration_.creator) {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721C, MinterCreatorSharedRoyaltiesBase) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _mintToken(address to, uint256 tokenId) internal virtual override {
        _onMinted(to, tokenId);
        _mint(to, tokenId);
    }
}