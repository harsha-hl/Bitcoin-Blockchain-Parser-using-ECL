# Bitcoin-Blockchain-Parser-using-ECL

## Steps to Run

1. Upload and spray the file ```data/blk00000.dat``` file onto the cluster in blob format. Note that the logical name should also be ```blk00000.dat``` as the parser expects blk files in sequential order. 
2. This would spray the file in a location similar to ```/var/lib/HPCCSystems/hpcc-data/thor``` folder.
3. ```parser.ecl``` is the file containing the complete parser and doesn't depend on any external libraries.
4. Replace the variable ```dataPath``` in ```parser.ecl``` (Line 9823) with the path to the **folder** containing the above sprayed ```blk00000.dat``` file.
5. Finally replace the path to the output.csv file in ```parser.ecl``` (Line 9820) as required. Having path to the dropzone is essential to be able to download and view the csv file upon running the parser.
6. For example, the path ```/var/lib/HPCCSystems/mydropzone/stats.csv``` caused the ```stats.csv``` file to be generated which has been dowloaded and pushed to this repository.
7. Run the ```parser.ecl``` as a workunit by replacing the above paths (Line 9820 and Line 9823) as needed.
8. Refresh the dropzone page on ecl watch to be able to view and download the ```output.csv``` file.
