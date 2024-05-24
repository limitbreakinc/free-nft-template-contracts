// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "../../ERC721CMetadata.sol";
import "@limitbreak/creator-token-standards/minting/MerkleWhitelistMint.sol";
import "@limitbreak/creator-token-standards/programmable-royalties/ImmutableMinterRoyalties.sol";

contract NFT is 
    ERC721CMetadata, 
    MerkleWhitelistMint,
    ImmutableMinterRoyalties {

    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        uint256 royaltyFeeNumerator_)
    ERC721CMetadata(name_, symbol_)
    MaxSupply(maxSupply_, maxOwnerMints_)
    MerkleWhitelistMint(maxMerkleMints_, permittedNumberOfMerkleRootChanges_) 
    ImmutableMinterRoyalties(royaltyFeeNumerator_) {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721C, ImmutableMinterRoyaltiesBase) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _mintToken(address to, uint256 tokenId) internal virtual override {
        _onMinted(to, tokenId);
        _mint(to, tokenId);
    }
}