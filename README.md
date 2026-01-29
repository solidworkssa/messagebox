# 27-messagebox - Base Native Architecture

> **Built for the Base Superchain & Stacks Bitcoin L2**

This project is architected to be **Base-native**: prioritizing onchain identity, low-latency interactions, and indexer-friendly data structures.

## 🔵 Base Native Features
- **Smart Account Ready**: Compatible with ERC-4337 patterns.
- **Identity Integrated**: Designed to resolve Basenames and store social metadata.
- **Gas Optimized**: Uses custom errors and batched call patterns for L2 efficiency.
- **Indexer Friendly**: Emits rich, indexed events for Subgraph data availability.

## 🟠 Stacks Integration
- **Bitcoin Security**: Leverages Proof-of-Transfer (PoX) via Clarity contracts.
- **Post-Condition Security**: Strict asset movement checks.

---
# MessageBox

On-chain encrypted messaging

## Overview

MessageBox provides a decentralized solution for secure peer-to-peer communications on both Base (EVM) and Stacks blockchains.

## Features

- Multi-chain support (Base and Stacks)
- Transparent on-chain operations
- Secure wallet integration
- Real-time transaction tracking
- Clean, minimal black & white UI

## Technology Stack

### Frontend
- Next.js 14+ with TypeScript
- Tailwind CSS
- pnpm workspaces

### Base (EVM)
- Solidity ^0.8.20
- Foundry
- Reown (WalletConnect)
- ethers v6

### Stacks
- Clarity v4
- Clarinet
- @stacks/connect
- @stacks/transactions

## Getting Started

### Prerequisites

- Node.js >= 18.0.0
- pnpm >= 8.0.0
- Foundry
- Clarinet

### Installation

```bash
pnpm install
cp .env.example .env.local
```

### Development

```bash
pnpm dev
pnpm test:base
pnpm test:stacks
```

## License

MIT License - see [LICENSE](LICENSE)
