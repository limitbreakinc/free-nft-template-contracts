// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "../../AdventureERC721CMetadata.sol";
import "@limitbreak/creator-token-contracts/contracts/minting/AirdropMint.sol";
import "@limitbreak/creator-token-contracts/contracts/programmable-royalties/MinterCreatorSharedRoyalties.sol";

contract AdventureFreeNFT is 
    AdventureERC721CMetadata, 
    AirdropMint,
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
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        SharedRoyaltyConfiguration memory sharedRoyaltyConfiguration_) 
    AdventureERC721CMetadata(name_, symbol_, maxSimultaneousQuests_) 
    MaxSupply(maxSupply_, maxOwnerMints_)
    AirdropMint(maxAirdropMints_) 
    MinterCreatorSharedRoyalties(
        sharedRoyaltyConfiguration_.royaltyFeeNumerator, 
        sharedRoyaltyConfiguration_.minterShares, 
        sharedRoyaltyConfiguration_.creatorShares, 
        sharedRoyaltyConfiguration_.creator) {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(AdventureERC721C, MinterCreatorSharedRoyaltiesBase) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _mintToken(address to, uint256 tokenId) internal virtual override {
        _onMinted(to, tokenId);
        _mint(to, tokenId);
    }

    function _burn(uint256 tokenId) internal virtual override {
        super._burn(tokenId);
        _onBurned(tokenId);
    }
}