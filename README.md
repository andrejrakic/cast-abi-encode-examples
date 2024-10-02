## Cast ABI Encode Examples

### Create .env file

```
PRIVATE_KEY=""
HOLESKY_RPC_URL="https://eth-holesky.g.alchemy.com/v2/<YOUR_KEY_GOES_HERE>"
```

### Contract Address

The contract is available at https://holesky.etherscan.io/address/0x81b7B541C2A2d475d647b382A30D44e438599856

### Try it out

Example 1:

```
cast send 0x81b7B541C2A2d475d647b382A30D44e438599856 \
--private-key $PRIVATE_KEY --rpc-url holesky \
"bar(bytes,address,bytes32,string,bytes[],address[],bytes[][])" \
0x1234 \
0x0000000000000000000000000000000000000123 \
0x0000000000000000000000000000000000000000000000000000000000000abc \
"Hello, world" \
'[0x1234, 0xabcd]' \
'[0x0000000000000000000000000000000000000001, 0x1111111111111111111111111111111111111111]' \
'[[0x1234], [0xabcd, 0x5678]]'
```

Example 2:

```
cast send 0x81b7B541C2A2d475d647b382A30D44e438599856 \
--private-key $PRIVATE_KEY --rpc-url holesky \
"foo((bytes,address,bytes32,string,bytes[],address[],bytes[][])[])" \
'[(0x1234,0x0000000000000000000000000000000000000123,0x0000000000000000000000000000000000000000000000000000000000000abc,"Hello, world!",[0x1234, 0xabcd],[0x0000000000000000000000000000000000000001, 0x1111111111111111111111111111111111111111],[[0x1234], [0xabcd, 0x5678]])]'
```
