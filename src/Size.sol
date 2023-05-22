// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Airdrop_BasicRoyalties } from "./templates/cloneable/adventure-erc721c/airdrop/basic-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties} from "./templates/cloneable/adventure-erc721c/airdrop/immutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties} from "./templates/cloneable/adventure-erc721c/airdrop/mutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Airdrop_SharedRoyalties} from "./templates/cloneable/adventure-erc721c/airdrop/shared-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Merkle_BasicRoyalties} from "./templates/cloneable/adventure-erc721c/merkle/basic-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties} from "./templates/cloneable/adventure-erc721c/merkle/immutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Merkle_MutableMinterRoyalties} from "./templates/cloneable/adventure-erc721c/merkle/mutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Cloneable_AdventureFreeNFT_Merkle_SharedRoyalties} from "./templates/cloneable/adventure-erc721c/merkle/shared-royalties/AdventureFreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Airdrop_BasicRoyalties} from "./templates/cloneable/erc721c/airdrop/basic-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Airdrop_ImmutableMinterRoyalties} from "./templates/cloneable/erc721c/airdrop/immutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Airdrop_MutableMinterRoyalties} from "./templates/cloneable/erc721c/airdrop/mutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Airdrop_SharedRoyalties} from "./templates/cloneable/erc721c/airdrop/shared-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Merkle_BasicRoyalties} from "./templates/cloneable/erc721c/merkle/basic-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Merkle_ImmutableMinterRoyalties} from "./templates/cloneable/erc721c/merkle/immutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Merkle_MutableMinterRoyalties} from "./templates/cloneable/erc721c/merkle/mutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Cloneable_FreeNFT_Merkle_SharedRoyalties} from "./templates/cloneable/erc721c/merkle/shared-royalties/FreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Airdrop_BasicRoyalties} from "./templates/constructable/adventure-erc721c/airdrop/basic-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties} from "./templates/constructable/adventure-erc721c/airdrop/immutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties} from "./templates/constructable/adventure-erc721c/airdrop/mutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Airdrop_SharedRoyalties} from "./templates/constructable/adventure-erc721c/airdrop/shared-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Merkle_BasicRoyalties} from "./templates/constructable/adventure-erc721c/merkle/basic-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties} from "./templates/constructable/adventure-erc721c/merkle/immutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Merkle_MutableMinterRoyalties} from "./templates/constructable/adventure-erc721c/merkle/mutable-minter-royalties/AdventureFreeNFT.sol";
import { AdventureFreeNFT as Constructable_AdventureFreeNFT_Merkle_SharedRoyalties} from "./templates/constructable/adventure-erc721c/merkle/shared-royalties/AdventureFreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Airdrop_BasicRoyalties} from "./templates/constructable/erc721c/airdrop/basic-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Airdrop_ImmutableMinterRoyalties} from "./templates/constructable/erc721c/airdrop/immutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Airdrop_MutableMinterRoyalties} from "./templates/constructable/erc721c/airdrop/mutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Airdrop_SharedRoyalties} from "./templates/constructable/erc721c/airdrop/shared-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Merkle_BasicRoyalties} from "./templates/constructable/erc721c/merkle/basic-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Merkle_ImmutableMinterRoyalties} from "./templates/constructable/erc721c/merkle/immutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Merkle_MutableMinterRoyalties} from "./templates/constructable/erc721c/merkle/mutable-minter-royalties/FreeNFT.sol";
import { FreeNFT as Constructable_FreeNFT_Merkle_SharedRoyalties} from "./templates/constructable/erc721c/merkle/shared-royalties/FreeNFT.sol";

contract Size_Cloneable_AdventureFreeNFT_Airdrop_BasicRoyalties is Cloneable_AdventureFreeNFT_Airdrop_BasicRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties is Cloneable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties is Cloneable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Airdrop_SharedRoyalties is Cloneable_AdventureFreeNFT_Airdrop_SharedRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Merkle_BasicRoyalties is Cloneable_AdventureFreeNFT_Merkle_BasicRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties is Cloneable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Merkle_MutableMinterRoyalties is Cloneable_AdventureFreeNFT_Merkle_MutableMinterRoyalties {}
contract Size_Cloneable_AdventureFreeNFT_Merkle_SharedRoyalties is Cloneable_AdventureFreeNFT_Merkle_SharedRoyalties {}

contract Size_Cloneable_FreeNFT_Airdrop_BasicRoyalties is Cloneable_FreeNFT_Airdrop_BasicRoyalties {}
contract Size_Cloneable_FreeNFT_Airdrop_ImmutableMinterRoyalties is Cloneable_FreeNFT_Airdrop_ImmutableMinterRoyalties {}
contract Size_Cloneable_FreeNFT_Airdrop_MutableMinterRoyalties is Cloneable_FreeNFT_Airdrop_MutableMinterRoyalties {}
contract Size_Cloneable_FreeNFT_Airdrop_SharedRoyalties is Cloneable_FreeNFT_Airdrop_SharedRoyalties {}
contract Size_Cloneable_FreeNFT_Merkle_BasicRoyalties is Cloneable_FreeNFT_Merkle_BasicRoyalties {}
contract Size_Cloneable_FreeNFT_Merkle_ImmutableMinterRoyalties is Cloneable_FreeNFT_Merkle_ImmutableMinterRoyalties {}
contract Size_Cloneable_FreeNFT_Merkle_MutableMinterRoyalties is Cloneable_FreeNFT_Merkle_MutableMinterRoyalties {}
contract Size_Cloneable_FreeNFT_Merkle_SharedRoyalties is Cloneable_FreeNFT_Merkle_SharedRoyalties {}

contract Size_Constructable_AdventureFreeNFT_Airdrop_BasicRoyalties is Constructable_AdventureFreeNFT_Airdrop_BasicRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        address royaltyReceiver_, 
        uint96 royaltyFeeNumerator_) 
    Constructable_AdventureFreeNFT_Airdrop_BasicRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        royaltyReceiver_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties is Constructable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        uint256 royaltyFeeNumerator_) 
    Constructable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties is Constructable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        uint96 defaultRoyaltyFeeNumerator_) 
    Constructable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        defaultRoyaltyFeeNumerator_) {}
}

contract Size_Constructable_AdventureFreeNFT_Airdrop_SharedRoyalties is Constructable_AdventureFreeNFT_Airdrop_SharedRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        SharedRoyaltyConfiguration memory sharedRoyaltyConfiguration_) 
    Constructable_AdventureFreeNFT_Airdrop_SharedRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        sharedRoyaltyConfiguration_) {}
}

contract Size_Constructable_AdventureFreeNFT_Merkle_BasicRoyalties is Constructable_AdventureFreeNFT_Merkle_BasicRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        address royaltyReceiver_, 
        uint96 royaltyFeeNumerator_) 
    Constructable_AdventureFreeNFT_Merkle_BasicRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxMerkleMints_,
        permittedNumberOfMerkleRootChanges_,
        royaltyReceiver_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties is Constructable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        uint256 royaltyFeeNumerator_)
    Constructable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxMerkleMints_,
        permittedNumberOfMerkleRootChanges_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_AdventureFreeNFT_Merkle_MutableMinterRoyalties is Constructable_AdventureFreeNFT_Merkle_MutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        uint96 defaultRoyaltyFeeNumerator_)
    Constructable_AdventureFreeNFT_Merkle_MutableMinterRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        maxMerkleMints_,
        permittedNumberOfMerkleRootChanges_,
        defaultRoyaltyFeeNumerator_) {}
}

contract Size_Constructable_AdventureFreeNFT_Merkle_SharedRoyalties is Constructable_AdventureFreeNFT_Merkle_SharedRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSimultaneousQuests_, 
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        MerkleMintConfiguration memory merkleMintConfiguration_,
        SharedRoyaltyConfiguration memory sharedRoyaltyConfiguration_)
    Constructable_AdventureFreeNFT_Merkle_SharedRoyalties(
        name_,
        symbol_,
        maxSimultaneousQuests_,
        maxSupply_,
        maxOwnerMints_,
        merkleMintConfiguration_,
        sharedRoyaltyConfiguration_) {}
}

contract Size_Constructable_FreeNFT_Airdrop_BasicRoyalties is Constructable_FreeNFT_Airdrop_BasicRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        address royaltyReceiver_, 
        uint96 royaltyFeeNumerator_) 
    Constructable_FreeNFT_Airdrop_BasicRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        royaltyReceiver_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_FreeNFT_Airdrop_ImmutableMinterRoyalties is Constructable_FreeNFT_Airdrop_ImmutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        uint256 royaltyFeeNumerator_) 
    Constructable_FreeNFT_Airdrop_ImmutableMinterRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_FreeNFT_Airdrop_MutableMinterRoyalties is Constructable_FreeNFT_Airdrop_MutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        uint96 defaultRoyaltyFeeNumerator_) 
    Constructable_FreeNFT_Airdrop_MutableMinterRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        defaultRoyaltyFeeNumerator_) {}
}

contract Size_Constructable_FreeNFT_Airdrop_SharedRoyalties is Constructable_FreeNFT_Airdrop_SharedRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxAirdropMints_,
        SharedRoyaltyConfiguration memory sharedRoyaltyConfiguration_) 
    Constructable_FreeNFT_Airdrop_SharedRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxAirdropMints_,
        sharedRoyaltyConfiguration_) {}
}

contract Size_Constructable_FreeNFT_Merkle_BasicRoyalties is Constructable_FreeNFT_Merkle_BasicRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        address royaltyReceiver_, 
        uint96 royaltyFeeNumerator_) 
    Constructable_FreeNFT_Merkle_BasicRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxMerkleMints_,
        permittedNumberOfMerkleRootChanges_,
        royaltyReceiver_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_FreeNFT_Merkle_ImmutableMinterRoyalties is Constructable_FreeNFT_Merkle_ImmutableMinterRoyalties {
        constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        uint256 royaltyFeeNumerator_)
    Constructable_FreeNFT_Merkle_ImmutableMinterRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxMerkleMints_,
        permittedNumberOfMerkleRootChanges_,
        royaltyFeeNumerator_) {}
}

contract Size_Constructable_FreeNFT_Merkle_MutableMinterRoyalties is Constructable_FreeNFT_Merkle_MutableMinterRoyalties {
    constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        uint256 maxMerkleMints_, 
        uint256 permittedNumberOfMerkleRootChanges_,
        uint96 defaultRoyaltyFeeNumerator_)
    Constructable_FreeNFT_Merkle_MutableMinterRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        maxMerkleMints_,
        permittedNumberOfMerkleRootChanges_,
        defaultRoyaltyFeeNumerator_) {}
}

contract Size_Constructable_FreeNFT_Merkle_SharedRoyalties is Constructable_FreeNFT_Merkle_SharedRoyalties {
        constructor(
        string memory name_, 
        string memory symbol_,
        uint256 maxSupply_, 
        uint256 maxOwnerMints_,
        MerkleMintConfiguration memory merkleMintConfiguration_,
        SharedRoyaltyConfiguration memory sharedRoyaltyConfiguration_)
    Constructable_FreeNFT_Merkle_SharedRoyalties(
        name_,
        symbol_,
        maxSupply_,
        maxOwnerMints_,
        merkleMintConfiguration_,
        sharedRoyaltyConfiguration_) {}
}