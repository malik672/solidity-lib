[![npm](https://img.shields.io/npm/v/@solarity/solidity-lib.svg)](https://www.npmjs.com/package/@solarity/solidity-lib)
[![Coverage Status](https://codecov.io/gh/dl-solarity/solidity-lib/graph/badge.svg)](https://codecov.io/gh/dl-solarity/solidity-lib)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitPOAP Badge](https://public-api.gitpoap.io/v1/repo/dl-solarity/solidity-lib/badge)](https://www.gitpoap.io/gh/dl-solarity/solidity-lib)

# Solidity Library by Distributed Lab

**Solidity Library for savvies by DL**

The library consists of modules and utilities that are built with a help of [Openzeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts) (4.9.2) and go far beyond mediocre solidity.

- Implementation of [**Contracts Registry**](https://eips.ethereum.org/EIPS/eip-6224) pattern
- Versatile **RBAC** smart contract
- Enhanced and simplified [**Diamond**](https://eips.ethereum.org/EIPS/eip-2535) pattern
- Heap based priority queue library
- Memory data structures (Vector)
- Optimized [**Incremental Merkle Tree**](https://github.com/runtimeverification/deposit-contract-verification/blob/master/deposit-contract-verification.pdf) data structure
- Novel **ReturnDataProxy** contract
- Utilities to ease work with ERC20 decimals, arrays, and sets

## Overview

### Installation

```console
$ npm install @solarity/solidity-lib
```

The latest stable version is always in the `master` branch.

## Usage

You will find the smart contracts in the `/contracts` directory. Feel free to play around and check the source code, it is rather descriptive.

Once the [npm package](https://www.npmjs.com/package/@solarity/solidity-lib) is installed, one can use the library just like that:

```solidity
pragma solidity ^0.8.4;

import {OwnableContractsRegistry} from "@solarity/solidity-lib/contracts-registry/presets/OwnableContractsRegistry.sol";

contract ContractsRegistry is OwnableContractsRegistry {
    . . .
}
```

> It is important to use the library as it is shipped and not copy-paste the code from untrusted sources.

## License

The library is released under the MIT License.
