// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "../../ERC721CMetadataInitializable.sol";
import "@limitbreak/creator-token-standards/minting/MerkleWhitelistMint.sol";
import "@limitbreak/creator-token-standards/programmable-royalties/ImmutableMinterRoyalties.sol";

contract NFT is 
    ERC721CMetadataInitializable, 
    MerkleWhitelistMintInitializable,
    ImmutableMinterRoyaltiesInitializable {

    constructor() ERC721("", "") {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721CInitializable, ImmutableMinterRoyaltiesBase) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _mintToken(address to, uint256 tokenId) internal virtual override {
        _onMinted(to, tokenId);
        _mint(to, tokenId);
    }
}