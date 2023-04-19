# Bitcoin-Blockchain-Parser-using-ECL

## Steps to Run

1. Upload and spray the file ```data/blk00000.dat``` file onto the cluster in blob format. Note that the logical name should also be ```blk00000.dat``` as the parser expects blk files in sequential order. 
2. This would spray the file in a location similar to ```/var/lib/HPCCSystems/hpcc-data/thor``` folder.
3. ```parser.ecl``` is the file containing the complete parser and doesn't depend on any external libraries.
4. Replace the variable ```dataPath``` in ```parser.ecl``` [[Line 9823](https://github.com/harsha-hl/Bitcoin-Blockchain-Parser-using-ECL/blob/master/parser.ecl#L9823)]
 with the path to the **folder** containing the above sprayed ```blk00000.dat``` file.
5. Finally replace the path to the output.csv file in ```parser.ecl``` [[Line 9820](https://github.com/harsha-hl/Bitcoin-Blockchain-Parser-using-ECL/blob/master/parser.ecl#L9820)] as required. Having path to the dropzone is essential to be able to download and view the csv file upon running the parser.
6. For example, the path ```/var/lib/HPCCSystems/mydropzone/stats.csv``` caused the ```stats.csv``` file to be generated which has been dowloaded and pushed to this repository.
7. Run the ```parser.ecl``` as a workunit by replacing the above paths [[Line 9820](https://github.com/harsha-hl/Bitcoin-Blockchain-Parser-using-ECL/blob/master/parser.ecl#L9820) and [Line 9823](https://github.com/harsha-hl/Bitcoin-Blockchain-Parser-using-ECL/blob/master/parser.ecl#L9823)] as needed.
8. Refresh the dropzone page on ecl watch to be able to view and download the ```output.csv``` file.

## Output Description

|Option|Description|Multiple Values|
|:-----|:----------|:-------:|
| `Computed_Block_Hash` | This column contains the computed hash of the Bitcoin block, which is calculated based on the data in the block's header and the transactions included in the block. This hash uniquely identifies the block on the Bitcoin network and is used to link blocks together to form the blockchain. | N |
| `Previous_Block_Hash`| This column contains the hash of the previous block in the blockchain. This hash links the current block to the previous block and forms a chain of blocks, hence the term "blockchain" | N |
|`Next_Block_Hash`| This column contains the hash of the next block in the blockchain. This hash is computed by miners as they try to add a new block to the blockchain.|N|
|`Merkle_Root`| This column contains the Merkle root of the transactions included in the block. The Merkle root is a hash of all the transaction hashes in the block, and it serves as a compact summary of all the transactions included in the block.|N|
|`Timestamp`| This column contains the timestamp of when the block was mined. This timestamp is stored as the number of seconds since January 1, 1970, and is used to order blocks chronologically.|N|
|`Nonce`| This column contains the nonce value used by miners to try to find a valid block hash. Miners iterate over nonce values in order to find a block hash that meets the difficulty requirement set by the Bitcoin network.|N|
|`BlockReward`| This column contains the reward that the miner who mined the block received. In the early days of Bitcoin, this reward was 50 bitcoins per block, but it has since been halved multiple times and is currently at 6.25 bitcoins per block.|N|
|`Transaction_Hash`| This column contains the hash of a transaction included in the block. Transactions are included in the block in a specific order, and this hash links the transaction to its place in the block.||N|
|`Input_Addresses`| This column contains the addresses from which the inputs to a transaction were spent. Bitcoin transactions can have multiple inputs, and each input spends the output of a previous transaction.|Y|
|`Transaction_Hash_of_Inputs`| This column contains the hash of the transaction that created the outputs spent by the inputs of a transaction. This hash links the input to the output that it spent.|Y|
|`Input_Amount`| This column contains the amount of bitcoin spent by the inputs of a transaction. This amount is the sum of the outputs that the inputs spend.|Y|
|`Output_Addresses`| This column contains the addresses to which the outputs of a transaction were sent. Bitcoin transactions can have multiple outputs, and each output sends a certain amount of bitcoin to a specific address.|Y|
|`Output_Amount`| This column contains the amount of bitcoin sent to each output address in a transaction. The sum of the output amounts must be less than or equal to the sum of the input amounts, with the difference being the transaction fee paid to the miner who includes the transaction in a block.|Y|


