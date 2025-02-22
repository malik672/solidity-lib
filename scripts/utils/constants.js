const BN = require("bignumber.js");

const ZERO_ADDR = "0x0000000000000000000000000000000000000000";
const ZERO_BYTES32 = "0x0000000000000000000000000000000000000000000000000000000000000000";
const ETHER_ADDR = "0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE";

const SECONDS_IN_DAY = 86400;
const SECONDS_IN_MONTH = SECONDS_IN_DAY * 30;

const PRECISION = new BN(10).pow(25);
const PERCENTAGE_100 = PRECISION.times(100);
const DECIMAL = new BN(10).pow(18);

const MAX_UINT256 = web3.utils.toTwosComplement(-1);

module.exports = {
  ZERO_ADDR,
  ZERO_BYTES32,
  ETHER_ADDR,
  SECONDS_IN_DAY,
  SECONDS_IN_MONTH,
  PRECISION,
  PERCENTAGE_100,
  DECIMAL,
  MAX_UINT256,
};
