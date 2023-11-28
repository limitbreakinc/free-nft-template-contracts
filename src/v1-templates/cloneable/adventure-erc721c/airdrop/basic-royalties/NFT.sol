// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "../../AdventureERC721CMetadataInitializable.sol";
import "@limitbreak/creator-token-standards/minting/AirdropMint.sol";
import "@limitbreak/creator-token-standards/programmable-royalties/BasicRoyalties.sol";

contract NFT is 
    AdventureERC721CMetadataInitializable, 
    AirdropMintInitializable,
    BasicRoyaltiesInitializable {

    constructor() ERC721("", "") {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(AdventureERC721CInitializable, ERC2981) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function setDefaultRoyalty(address receiver, uint96 feeNumerator) public {
        _requireCallerIsContractOwner();
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    function setTokenRoyalty(uint256 tokenId, address receiver, uint96 feeNumerator) public {
        _requireCallerIsContractOwner();
        _setTokenRoyalty(tokenId, receiver, feeNumerator);
    }

    function _mintToken(address to, uint256 tokenId) internal virtual override {
        _mint(to, tokenId);
    }
}