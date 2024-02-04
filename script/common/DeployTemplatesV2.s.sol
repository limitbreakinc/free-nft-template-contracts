// SPDX-License-Identifier: BSL-1.1
pragma solidity 0.8.19;

import "forge-std/Script.sol";
import "forge-std/console2.sol";

import { NFT as V2_Cloneable_FreeNFT_Airdrop_BasicRoyalties} from "src/v2-templates/cloneable/erc721c/airdrop/basic-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Airdrop_ImmutableMinterRoyalties} from "src/v2-templates/cloneable/erc721c/airdrop/immutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Airdrop_MutableMinterRoyalties} from "src/v2-templates/cloneable/erc721c/airdrop/mutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Airdrop_SharedRoyalties} from "src/v2-templates/cloneable/erc721c/airdrop/shared-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Merkle_BasicRoyalties} from "src/v2-templates/cloneable/erc721c/merkle/basic-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Merkle_ImmutableMinterRoyalties} from "src/v2-templates/cloneable/erc721c/merkle/immutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Merkle_MutableMinterRoyalties} from "src/v2-templates/cloneable/erc721c/merkle/mutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_FreeNFT_Merkle_SharedRoyalties} from "src/v2-templates/cloneable/erc721c/merkle/shared-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Airdrop_BasicRoyalties } from "src/v2-templates/cloneable/adventure-erc721c/airdrop/basic-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/airdrop/immutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/airdrop/mutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Airdrop_SharedRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/airdrop/shared-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Merkle_BasicRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/merkle/basic-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/merkle/immutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Merkle_MutableMinterRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/merkle/mutable-minter-royalties/NFT.sol";
import { NFT as V2_Cloneable_AdventureFreeNFT_Merkle_SharedRoyalties} from "src/v2-templates/cloneable/adventure-erc721c/merkle/shared-royalties/NFT.sol";

contract DeployTemplatesV2 is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_KEY");
        
        vm.startBroadcast(deployerPrivateKey);

        deployAndCheckAddressERC721CAirdropBasicRoyalties();
        deployAndCheckAddressERC721CAirdropImmutableMinterRoyalties();
        deployAndCheckAddressERC721CAirdropMutableMinterRoyalties();
        deployAndCheckAddressERC721CAirdropSharedRoyalties();

        deployAndCheckAddressERC721CMerkleBasicRoyalties();
        deployAndCheckAddressERC721CMerkleImmutableMinterRoyalties();
        deployAndCheckAddressERC721CMerkleMutableMinterRoyalties();
        deployAndCheckAddressERC721CMerkleSharedRoyalties();

        deployAndCheckAddressAdventureERC721CAirdropBasicRoyalties();
        deployAndCheckAddressAdventureERC721CAirdropImmutableMinterRoyalties();
        deployAndCheckAddressAdventureERC721CAirdropMutableMinterRoyalties();
        deployAndCheckAddressAdventureERC721CAirdropSharedRoyalties();

        deployAndCheckAddressAdventureERC721CMerkleBasicRoyalties();
        deployAndCheckAddressAdventureERC721CMerkleImmutableMinterRoyalties();
        deployAndCheckAddressAdventureERC721CMerkleMutableMinterRoyalties();
        deployAndCheckAddressAdventureERC721CMerkleSharedRoyalties();

        vm.stopBroadcast();
    }

    function deployAndCheckAddressERC721CAirdropBasicRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_AIRDROP_BASIC_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Airdrop_BasicRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_AIRDROP_BASIC_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CAirdropImmutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_AIRDROP_IMMUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Airdrop_ImmutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_AIRDROP_IMMUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CAirdropMutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_AIRDROP_MUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Airdrop_MutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_AIRDROP_MUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CAirdropSharedRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_AIRDROP_SHARED_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Airdrop_SharedRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_AIRDROP_SHARED_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CMerkleBasicRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_MERKLE_BASIC_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Merkle_BasicRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_MERKLE_BASIC_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CMerkleImmutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_MERKLE_IMMUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Merkle_ImmutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_MERKLE_IMMUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CMerkleMutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_MERKLE_MUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Merkle_MutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_MERKLE_MUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressERC721CMerkleSharedRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ERC721C_MERKLE_SHARED_ROYALTIES") != 
            address(new V2_Cloneable_FreeNFT_Merkle_SharedRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ERC721C_MERKLE_SHARED_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    //

    function deployAndCheckAddressAdventureERC721CAirdropBasicRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_BASIC_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Airdrop_BasicRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_BASIC_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CAirdropImmutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_IMMUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Airdrop_ImmutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_IMMUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CAirdropMutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_MUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Airdrop_MutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_MUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CAirdropSharedRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_SHARED_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Airdrop_SharedRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_AIRDROP_SHARED_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CMerkleBasicRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_MERKLE_BASIC_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Merkle_BasicRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_MERKLE_BASIC_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CMerkleImmutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_MERKLE_IMMUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Merkle_ImmutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_MERKLE_IMMUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CMerkleMutableMinterRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_MERKLE_MUTABLE_MINTER_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Merkle_MutableMinterRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_MERKLE_MUTABLE_MINTER_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }

    function deployAndCheckAddressAdventureERC721CMerkleSharedRoyalties() internal {
        if (vm.envAddress("EXPECTED_ADDRESS_TEMPLATE_ADVENTURE_ERC721C_MERKLE_SHARED_ROYALTIES") != 
            address(new V2_Cloneable_AdventureFreeNFT_Merkle_SharedRoyalties{salt: bytes32(vm.envUint("SALT_TEMPLATE_ADVENTURE_ERC721C_MERKLE_SHARED_ROYALTIES"))}())) {
            revert("Unexpected deploy address");
        }
    }
}