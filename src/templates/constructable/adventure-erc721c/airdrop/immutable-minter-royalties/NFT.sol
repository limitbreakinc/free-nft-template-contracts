// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "../../AdventureERC721CMetadata.sol";
import "@limitbreak/creator-token-standards/minting/AirdropMint.sol";
import "@limitbreak/creator-token-standards/programmable-royalties/ImmutableMinterRoyalties.sol";

contract NFT is 
    AdventureERC721CMetadata, 
    AirdropMint,
    ImmutableMinterRoyalties {

    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        uint256 royaltyFeeNumerator_) 
    AdventureERC721CMetadata(name_, symbol_, maxSimultaneousQuests_) 
    MaxSupply(maxSupply_, maxOwnerMints_)
    AirdropMint(maxAirdropMints_) 
    ImmutableMinterRoyalties(royaltyFeeNumerator_) {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(AdventureERC721C, ImmutableMinterRoyaltiesBase) returns (bool) {
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