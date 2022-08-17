// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ERC20 {
    string private name_;
    string private symbol_;
    uint256 private totalSupply_;

    mapping(address => uint256) balanceOf;

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _totalSupply
    ) {
        name_ = _name;
        symbol_ = _symbol;
        totalSupply_ = _totalSupply;
    }

    function transfer(address to, uint256 value) public returns (bool success) {
        balanceOf[msg.sender] = balanceOf[msg.sender] - value;
        balanceOf[to] += value;
        return true;
    }

    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }

    function checkBalance() public view returns (uint256) {
        return balanceOf[msg.sender];
    }
}
