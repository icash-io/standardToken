pragma solidity ^0.4.19;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

// Simple Token Contract
contract iCashToken is StandardToken {
    // Public variables
    string constant public name = "iCash"; 
    string constant public symbol = "ICASH";
    uint constant public decimals = 18;
    
    // Constants for creating 1 billion tokens
    uint constant MILLION = 10 ** 6;
    uint constant BASE_UNITS = 10 ** decimals;    
    uint constant INITIAL_SUPPLY = 1000 * MILLION * BASE_UNITS;

    // Initialize the token and set the account that created this contract as the owner of all tokens.
    function iCashToken() {
        totalSupply = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}
