// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "../modules/proxyOwner.sol";
abstract contract seismicsFactoryData is proxyOwner{
    uint256 constant internal currentVersion = 2;
    mapping(bytes32=>address) public vaultsMap;
    address[] public allVaults;
    address public reservePool;
    address public systemCoin;
    address public dsOracle;

    event CreateVaultPool(address indexed poolAddress,bytes32 indexed vaultID,address indexed collateral,uint256 debtCeiling,uint256 debtFloor,uint256 collateralRate,
    int256 stabilityFee,uint256 feeInterval);
    event CreateSystemCoin(address indexed sender,address indexed systemCoin);
}