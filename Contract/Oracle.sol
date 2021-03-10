// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.0;

import "./SafeMath.sol";
import "./Owned.sol";
import "./WhiteList.sol";


interface IEsm {
    function shutdown() external;

    function isClosed() external view returns (bool);
}

contract Oracle is Owned, WhiteList {
    using SafeMath for uint256;
    /// @notice Oracle Name
    bytes32 name;

    /// @notice Token-usdt price
    uint256 public val;
    /**
     * @notice Construct a new Oracle
     */
    constructor() public Owned(msg.sender) {
        name = "LPToken";
    }
    
     /**
     * @notice Anybody can read the oracle price 查询当前的喂价值
     */
    function peek() public view returns (uint256) {
        return val;
    }
}
