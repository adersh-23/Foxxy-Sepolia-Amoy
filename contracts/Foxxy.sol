// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "erc721a/contracts/ERC721A.sol";


contract Foxxy is ERC721A{

    address public owner;

    // maximum Foxxy  can mint is 5
    uint256 public maxQuantity = 5;

    // Foxxy images url
    string baseUrl = "https://rose-academic-galliform-365.mypinata.cloud/ipfs/QmUs3Fk85eNQWJaHuXWCHAezMUpAyzqkKXrUkZC5dUNfiV/?pinataGatewayToken=BUvHdzqTAXLLKcHp2oqNjAYDR-lP70mMmWTleG7g7YAbQiipyxtjnf9WjMkT0afP";

    //  prompt description for Foxxy 
    string public prompt =
        "Picture Of Baby Fox";

    constructor() ERC721A("Foxxy", "Fx") {
        owner = msg.sender;
    }

    // onlyowner modifier can call function
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action.");
        _;
    }

    // Mint foxxy NFT function
    function mint(uint256 quantity) external payable onlyOwner{
        require(totalSupply() + quantity <= maxQuantity ,"You cannot mint more than 5 NFT");
        _mint(msg.sender, quantity);
    }
    

    // function for url of Foxxy
    function _baseURI() internal view override returns (string memory){
        return baseUrl;
    }

    //  prompt functoin for Foxxy
    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}