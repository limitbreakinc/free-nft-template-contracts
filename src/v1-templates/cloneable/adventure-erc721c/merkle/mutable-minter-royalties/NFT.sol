// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "../../AdventureERC721CMetadataInitializable.sol";
import "@limitbreak/creator-token-standards/minting/MerkleWhitelistMint.sol";
import "@limitbreak/creator-token-standards/programmable-royalties/MutableMinterRoyalties.sol";

contract NFT is 
    AdventureERC721CMetadataInitializable, 
    MerkleWhitelistMintInitializable,
    MutableMinterRoyaltiesInitializable {

    constructor() ERC721("", "") {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(AdventureERC721CInitializable, MutableMinterRoyaltiesBase) returns (bool) {
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