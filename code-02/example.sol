// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OneMilNftPixels is ERC721, Ownable {
    struct Pixel {
        bytes3 colour;
        uint256 price;
    }

    event Update(uint24 indexed tokenId);

    uint256 public minPriceIncrement;
    uint256 public updatePrice;
    Pixel[1_000_000] public pixels;

    constructor() ERC721("OneMilNftPixels", "NFT1MPX") {
        minPriceIncrement = 1e15; // 0.001 RBTC
        updatePrice = 1e15; // 0.001 RBTC
    }

    function buy(uint24 id, bytes3 colour) public payable {
        require(id < 1_000_000, "Pixel ID out of range");
        Pixel storage pixel = pixels[id];
        require(msg.value >= pixel.price + minPriceIncrement, "Insufficient RBTC sent");

        pixel.colour = colour;
        pixel.price = msg.value;

        if (_exists(id)) {
            _transfer(ownerOf(id), msg.sender, id);
        } else {
            _safeMint(msg.sender, id);
        }

        emit Update(id);
    }

    function update(uint24 id, bytes3 colour) public payable {
        require(msg.value >= updatePrice, "Insufficient RBTC for update");
        require(ownerOf(id) == msg.sender, "Only owner can update");

        Pixel storage pixel = pixels[id];
        pixel.colour = colour;

        emit Update(id);
    }
}
