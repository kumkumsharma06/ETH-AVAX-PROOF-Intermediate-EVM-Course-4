// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("DegenToken", "DGN") {}
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), to, amount);
        approve(msg.sender, amount);
        return true;
    }
     function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }
    function DegenGame() public pure returns(string memory) {
            return "1. GAMER NFT value = 500 \n 2. DegenGamer value = 175";
        }
        function reedem(uint choice) external payable{
           // require(choice<=2,"your selection is invalid for this");
            if(choice ==1){
                require(balanceOf(msg.sender)>=500, "Insufficient Balance For Your Selection");
                approve(msg.sender, 500);
                transferFrom(msg.sender, owner(), 500);
            }
            
            else{
                require(balanceOf(msg.sender)>=175, "Insufficient Balance For Your Selection");
                approve(msg.sender, 175);
                transferFrom(msg.sender, owner(), 175);
            }
        }
}

