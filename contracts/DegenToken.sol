// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    uint internal code=4712;
    string public shop_items;
    string public discount;
    constructor() ERC20("Degen", "DGN") {
        shop_items="Redeemable items : 1. Degen Drink 2. Degen fan 3. Degen Outfit 4. Degen Shades";
        discount="Enter 0 if you do not have a discount code";
    }
    modifier balance_check(){
        require(balanceOf(msg.sender)>500, "Insufficient balance");
        _;
    }

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }

    function redeem(uint256 redeem_number, uint discount_code) public balance_check {
        assert(redeem_number<=4);
        if(discount_code==code){
            _burn(msg.sender, redeem_number*250);
            
        }
        else{
            _burn(msg.sender, redeem_number*500);
        }

    }
}
