// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    mapping(string => uint256) private rewardCosts;
    constructor() ERC20("DegenToken", "DGN") {
        _mint(msg.sender, 10000 * 10 ** decimals());
        rewardCosts["Reward1"] = 100;
        rewardCosts["Reward2"] = 200;
    }
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }
    function redeem(string memory rewardName) public {
        uint256 cost = rewardCosts[rewardName];
        require(cost > 0, "Reward not available");
        require(balanceOf(msg.sender) >= cost, "Insufficient balance");
        _burn(msg.sender, cost);
        emit RewardRedeemed(msg.sender, rewardName);
    }
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }
    event RewardRedeemed(address indexed account, string rewardName);
}


