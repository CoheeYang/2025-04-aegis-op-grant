
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;


// abstract contract TargetFunctions is BaseTargetFunctions, Properties {
////yUSD
    function yUSD_acceptOwnership() public {
        yUSD.acceptOwnership();
    }

    function yUSD_addBlackList(address _user) public {
        yUSD.addBlackList(_user);
    }

    function yUSD_approve(address spender, uint256 value) public {
        yUSD.approve(spender, value);
    }

    function yUSD_burn(uint256 value) public {
        yUSD.burn(value);
    }

    function yUSD_burnFrom(address account, uint256 value) public {
        yUSD.burnFrom(account, value);
    }

    function yUSD_mint(address account, uint256 value) public {
        yUSD.mint(account, value);
    }

    function yUSD_permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
        yUSD.permit(owner, spender, value, deadline, v, r, s);
    }

    function yUSD_removeBlackList(address _user) public {
        yUSD.removeBlackList(_user);
    }

    function yUSD_renounceOwnership() public {
        yUSD.renounceOwnership();
    }

    function yUSD_setMinter(address newMinter) public {
        yUSD.setMinter(newMinter);
    }

    function yUSD_transfer(address to, uint256 value) public {
        yUSD.transfer(to, value);
    }

    function yUSD_transferFrom(address from, address to, uint256 value) public {
        yUSD.transferFrom(from, to, value);
    }

    function yUSD_transferOwnership(address newOwner) public {
        yUSD.transferOwnership(newOwner);
    }
///aegisConfig
    function aegisConfig_acceptOwnership() public {
        aegisConfig.acceptOwnership();
    }

    function aegisConfig_disableWhitelist() public {
        aegisConfig.disableWhitelist();
    }

    function aegisConfig_enableWhitelist() public {
        aegisConfig.enableWhitelist();
    }

    function aegisConfig_renounceOwnership() public {
        aegisConfig.renounceOwnership();
    }

    function aegisConfig_setOperator(address operator, bool allowed) public {
        aegisConfig.setOperator(operator, allowed);
    }

    function aegisConfig_setTrustedSigner(address signer) public {
        aegisConfig.setTrustedSigner(signer);
    }

    function aegisConfig_transferOwnership(address newOwner) public {
        aegisConfig.transferOwnership(newOwner);
    }

    function aegisConfig_whitelistAddress(address[] memory addrs, bool[] memory whitelisted) public {
        aegisConfig.whitelistAddress(addrs, whitelisted);
    }

    function aegisConfig_whitelistAddress(address addr, bool whitelisted) public {
        aegisConfig.whitelistAddress(addr, whitelisted);
    }
////Mint
    function aegisMinting_acceptDefaultAdminTransfer() public {
        aegisMinting.acceptDefaultAdminTransfer();
    }

    function aegisMinting_addCustodianAddress(address custodian) public {
        aegisMinting.addCustodianAddress(custodian);
    }

    function aegisMinting_addSupportedAsset(address asset, uint32 hearbeat) public {
        aegisMinting.addSupportedAsset(asset, hearbeat);
    }

    function aegisMinting_approveRedeemRequest(string memory requestId, uint256 amount) public {
        aegisMinting.approveRedeemRequest(requestId, amount);
    }

    function aegisMinting_beginDefaultAdminTransfer(address newAdmin) public {
        aegisMinting.beginDefaultAdminTransfer(newAdmin);
    }

    function aegisMinting_cancelDefaultAdminTransfer() public {
        aegisMinting.cancelDefaultAdminTransfer();
    }

    function aegisMinting_changeDefaultAdminDelay(uint48 newDelay) public {
        aegisMinting.changeDefaultAdminDelay(newDelay);
    }

    function aegisMinting_depositIncome(OrderLib.Order memory order, bytes memory signature) public {
        aegisMinting.depositIncome(order, signature);
    }

    function aegisMinting_forceTransferToCustody(address wallet, address asset) public {
        aegisMinting.forceTransferToCustody(wallet, asset);
    }

    function aegisMinting_freezeFunds(address asset, uint256 amount) public {
        aegisMinting.freezeFunds(asset, amount);
    }

    function aegisMinting_grantRole(bytes32 role, address account) public {
        aegisMinting.grantRole(role, account);
    }

    function aegisMinting_mint(OrderLib.Order memory order, bytes memory signature) public {
        aegisMinting.mint(order, signature);
    }

    function aegisMinting_rejectRedeemRequest(string memory requestId) public {
        aegisMinting.rejectRedeemRequest(requestId);
    }

    function aegisMinting_removeCustodianAddress(address custodian) public {
        aegisMinting.removeCustodianAddress(custodian);
    }

    function aegisMinting_removeSupportedAsset(address asset) public {
        aegisMinting.removeSupportedAsset(asset);
    }

    function aegisMinting_renounceRole(bytes32 role, address account) public {
        aegisMinting.renounceRole(role, account);
    }

    function aegisMinting_requestRedeem(OrderLib.Order memory order, bytes memory signature) public {
        aegisMinting.requestRedeem(order, signature);
    }

    function aegisMinting_revokeRole(bytes32 role, address account) public {
        aegisMinting.revokeRole(role, account);
    }

    function aegisMinting_rollbackDefaultAdminDelay() public {
        aegisMinting.rollbackDefaultAdminDelay();
    }

    function aegisMinting_setAegisConfigAddress(IAegisConfig _config) public {
        aegisMinting.setAegisConfigAddress(_config);
    }

    function aegisMinting_setAegisOracleAddress(IAegisOracle _aegisOracle) public {
        aegisMinting.setAegisOracleAddress(_aegisOracle);
    }

    function aegisMinting_setAegisRewardsAddress(IAegisRewards _aegisRewards) public {
        aegisMinting.setAegisRewardsAddress(_aegisRewards);
    }

    function aegisMinting_setChainlinkAssetHeartbeat(address asset, uint32 heartbeat) public {
        aegisMinting.setChainlinkAssetHeartbeat(asset, heartbeat);
    }

    function aegisMinting_setFeedRegistryAddress(FeedRegistryInterface _registry) public {
        aegisMinting.setFeedRegistryAddress(_registry);
    }

    function aegisMinting_setIncomeFeeBP(uint16 value) public {
        aegisMinting.setIncomeFeeBP(value);
    }

    function aegisMinting_setInsuranceFundAddress(address _insuranceFundAddress) public {
        aegisMinting.setInsuranceFundAddress(_insuranceFundAddress);
    }

    function aegisMinting_setMintFeeBP(uint16 value) public {
        aegisMinting.setMintFeeBP(value);
    }

    function aegisMinting_setMintLimits(uint32 periodDuration, uint256 maxPeriodAmount) public {
        aegisMinting.setMintLimits(periodDuration, maxPeriodAmount);
    }

    function aegisMinting_setMintPaused(bool paused) public {
        aegisMinting.setMintPaused(paused);
    }

    function aegisMinting_setRedeemFeeBP(uint16 value) public {
        aegisMinting.setRedeemFeeBP(value);
    }

    function aegisMinting_setRedeemLimits(uint32 periodDuration, uint256 maxPeriodAmount) public {
        aegisMinting.setRedeemLimits(periodDuration, maxPeriodAmount);
    }

    function aegisMinting_setRedeemPaused(bool paused) public {
        aegisMinting.setRedeemPaused(paused);
    }

    function aegisMinting_transferToCustody(address wallet, address asset, uint256 amount) public {
        aegisMinting.transferToCustody(wallet, asset, amount);
    }

    function aegisMinting_unfreezeFunds(address asset, uint256 amount) public {
        aegisMinting.unfreezeFunds(asset, amount);
    }

    function aegisMinting_withdrawRedeemRequest(string memory requestId) public {
        aegisMinting.withdrawRedeemRequest(requestId);
    }
/////oracle updateYUSDPrice
    function aegisOracle_acceptOwnership() public {
        aegisOracle.acceptOwnership();
    }

    function aegisOracle_renounceOwnership() public {
        aegisOracle.renounceOwnership();
    }

    function aegisOracle_setOperator(address operator, bool allowed) public {
        aegisOracle.setOperator(operator, allowed);
    }

    function aegisOracle_transferOwnership(address newOwner) public {
        aegisOracle.transferOwnership(newOwner);
    }

    function aegisOracle_updateYUSDPrice(int256 price) public {
        aegisOracle.updateYUSDPrice(price);
    }
//////rewards
    function aegisReward_acceptDefaultAdminTransfer() public {
        aegisReward.acceptDefaultAdminTransfer();
    }

    function aegisReward_beginDefaultAdminTransfer(address newAdmin) public {
        aegisReward.beginDefaultAdminTransfer(newAdmin);
    }

    function aegisReward_cancelDefaultAdminTransfer() public {
        aegisReward.cancelDefaultAdminTransfer();
    }

    function aegisReward_changeDefaultAdminDelay(uint48 newDelay) public {
        aegisReward.changeDefaultAdminDelay(newDelay);
    }

    function aegisReward_claimRewards(ClaimRewardsLib.ClaimRequest memory claimRequest, bytes memory signature) public {
        aegisReward.claimRewards(claimRequest, signature);
    }

    function aegisReward_depositRewards(bytes memory requestId, uint256 amount) public {
        aegisReward.depositRewards(requestId, amount);
    }

    function aegisReward_finalizeRewards(bytes32 id, uint256 claimDuration) public {
        aegisReward.finalizeRewards(id, claimDuration);
    }

    function aegisReward_grantRole(bytes32 role, address account) public {
        aegisReward.grantRole(role, account);
    }

    function aegisReward_renounceRole(bytes32 role, address account) public {
        aegisReward.renounceRole(role, account);
    }

    function aegisReward_revokeRole(bytes32 role, address account) public {
        aegisReward.revokeRole(role, account);
    }

    function aegisReward_rollbackDefaultAdminDelay() public {
        aegisReward.rollbackDefaultAdminDelay();
    }

    function aegisReward_setAegisConfigAddress(IAegisConfig _aegisConfig) public {
        aegisReward.setAegisConfigAddress(_aegisConfig);
    }

    function aegisReward_setAegisMintingAddress(address _aegisMinting) public {
        aegisReward.setAegisMintingAddress(_aegisMinting);
    }

    function aegisReward_withdrawExpiredRewards(bytes32 id, address to) public {
        aegisReward.withdrawExpiredRewards(id, to);
    }
}