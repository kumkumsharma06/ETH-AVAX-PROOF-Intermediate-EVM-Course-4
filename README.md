# ETH-AVAX-PROOF-Intermediate-EVM-Course-4
## DegenToken contract.
### LICENSCE
 it is using the MIT license.
### VERSION
 SOLIDITY VERSION ^0.8.9

### IMPORTS CONTRACTS FROM OPENZEPPELIN LIBRARY 
 These lines import three different Solidity contracts from the OpenZeppelin library. 
 * The first import is for the ERC20 contract, which provides a basic implementation of the ERC20 token standard.
 * The second import is for the ERC20Burnable contract, which extends ERC20 and adds functionality to burn tokens.
 * The third import is for the Ownable contract, which provides a basic access control mechanism.
### DegenToken
 contract named "DegenToken" and specifies that it inherits from the ERC20, ERC20Burnable, and Ownable contracts. By inheriting these contracts, the DegenToken contract inherits their functions and variables
 
### constructor()
 `constructor function that is executed when the contract is deployed. It calls the constructor of the ERC20 contract with the parameters "DegenToken" and "DGN" to set the token name and symbol, respectively. Then, it mints 10,000 tokens to the address of the contract deployer (msg.sender) using the _mint function inherited from ERC20.
 * `mint function`
 function allows the contract owner to mint new tokens. It takes two parameters: the recipient's address (to) and the amount of tokens to be minted (amount). The onlyOwner modifier ensures that only the contract owner can call this function. The function then calls the inherited _mint function to create new tokens and assigns them to the specified address.
 * `transfer function`
 transfer function from the ERC20 contract. It allows token holders to transfer tokens to another address (to). It takes two parameters: the recipient's address (to) and the amount of tokens to be transferred (amount). The function calls the internal _transfer function (inherited from ERC20) to perform the actual token transfer and returns true if the transfer is successful.
 gameStore
* `function DegenGame()` public pure returns (string memory)
The gameStore function provides information about the available items in the in-game store. It returns a string with the options and their corresponding values. Players can choose from these items to redeem with their tokens.

* `redeemTokens`
function redeemTokens(uint choice) external payable
The redeemTokens function allows players to redeem tokens for items in the in-game store. Players need to provide the choice parameter, representing the sequence number of the desired item to redeem. The function checks the player's token balance and verifies if it is sufficient for the selected item. If the conditions are met, it transfers the corresponding token value to the contract owner.
 * `balanceOf function`
 This function allows anyone to retrieve the token balance of a specific address (account). It overrides the balanceOf function inherited from ERC20 and returns the token balance of the specified address by calling the inherited balanceOf function using the super keyword.
 
 Overall, this code defines a basic ERC20 token contract named "DegenToken" with additional functionalities inherited from ERC20Burnable and Ownable contracts. It includes features such as token minting, burning, and transfers.

  ## snowtrace
  verify your contrace at avalanche fuji testnet on `snowtrace.io` and check the contract transaction

  ## metamask 
  also set the network metamask to avalanchefuji network manually
* and transfer testtoken from avalanche mainnet

  
