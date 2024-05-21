// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "../../AdventureERC721CMetadataInitializable.sol";
import "@limitbreak/creator-token-standards/minting/AirdropMint.sol";
import "@limitbreak/creator-token-standards/programmable-royalties/MinterCreatorSharedRoyalties.sol";

contract NFT is 
    AdventureERC721CMetadataInitializable, 
    AirdropMintInitializable,
    MinterCreatorSharedRoyaltiesInitializable {

    constructor() ERC721("", "") {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(AdventureERC721CInitializable, MinterCreatorSharedRoyaltiesBase) returns (bool) {
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