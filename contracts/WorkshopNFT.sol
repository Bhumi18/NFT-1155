// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract WorkshopNFT is ERC1155, Ownable {
    uint256 public constant WORKSHOP_TOKEN = 0;

    constructor()
        ERC1155(
            "https://gateway.lighthouse.storage/ipfs/bafkreie454vkrrvwuu37tlcdhm2rkmhawc7ge5rt366dzdemz2nq72udx4"
        )
        Ownable(msg.sender)
    {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account) public onlyOwner {
        _mint(account, WORKSHOP_TOKEN, 1, "");
    }

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public onlyOwner {
        _mintBatch(to, ids, amounts, data);
    }
}
