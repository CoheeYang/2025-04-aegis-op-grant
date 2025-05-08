// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "forge-std/Test.sol";
import "contracts/test/TestToken.sol";
import "contracts/test/FeedRegistry.sol";
import "contracts/AegisConfig.sol";
import "contracts/AegisMinting.sol";
import "contracts/AegisOracle.sol";
import "contracts/AegisRewards.sol";
import "contracts/YUSD.sol";

contract DeployContractsTest is Test {

///actors
  address TRUSTED_SIGNER = address(0x1234);
  address admin = makeAddr("admin");
  address custodian = makeAddr("custodian");
  address insuranceFund = makeAddr("insuranceFund");
  address operator = makeAddr("operator"); //operator for AegisOracle

///instances
  YUSD yusd;
  AegisConfig aegisConfig;
  AegisRewards aegisRewards;
  AegisMinting aegisMinting;
  AegisOracle aegisOracle;

  TestToken testAsset = new TestToken("Test", "TST", 18);
  FeedRegistry feedRegistry = new FeedRegistry();

////params




  function setUp() public {
// Set up the test environment
    vm.startPrank(admin);
    
    // Deploy the YUSD contract
    yusd = new YUSD(admin);
    

    // Deploy the AegisOracle contract
    address[] memory operators = new address[](1);
    operators[0] = operator;
    aegisOracle = new AegisOracle(operators, admin);

    // Deploy the AegisConfig contract
    aegisConfig = new AegisConfig(TRUSTED_SIGNER, operators, admin);
    
    // Deploy the AegisRewards contract
    aegisRewards = new AegisRewards(IYUSD(address(yusd)), IAegisConfig(address(aegisConfig)), admin);


 



    ///params for AegisMinting
    address[] memory assets = new address[](1);
    assets[0] = address(testAsset);

    uint32[] memory lockupPeriods = new uint32[](1);
    lockupPeriods[0] = 86400;

    address[] memory custodians = new address[](1);
    custodians[0] = custodian;



    // Deploy the AegisMinting contract
    
    aegisMinting = new AegisMinting(
      IYUSD(address(yusd)),
      IAegisConfig(address(aegisConfig)),
      IAegisRewards(address(aegisRewards)),
      IAegisOracle(address(aegisOracle)),//_aegisOracle
      FeedRegistryInterface(address(feedRegistry)),//_fdRegistry
      insuranceFund,
      assets,
      lockupPeriods,//_chainlinkAssetHeartbeats
      custodians,
      admin
    );

    //////setFunction
    yusd.setMinter(address(aegisMinting));///YUSD只有mint，和普通的erc20函数，以及burn public
    aegisRewards.setAegisMintingAddress(address(aegisMinting));
    // aegisMinting.setMintLimits(uint32 periodDuration, uint256 maxPeriodAmount);//require setting manager role
    // aegisMinting.setRedeemLimits(uint32 periodDuration, uint256 maxPeriodAmount);//require setting manager role
    // aegisMinting.setMintFeeBP(uint16 value);//SETTINGS_MANAGER_ROLE
    // aegisMinting.setRedeemFeeBP(uint16 value);//SETTINGS_MANAGER_ROLE
    ///sanity check
    assertEq(yusd.owner(), admin);
    assertEq(yusd.name(), "YUSD");
    assertEq(yusd.symbol(), "YUSD");
    assertEq(address(aegisRewards.yusd()), address(yusd));
  }


}
