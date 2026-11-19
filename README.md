# South Africa Model Debugging

Changes that have been made

1. In simtools.ini: `exe_path = /gpfs/data/bershteynlab/EMOD/bin/EradicationMalaria-Ongoing_2023_01_05`
2. config.json:  `"Serialized_Population_Reading_Type": "NONE", "Serialized_Population_Writing_Type": "NONE",`
3. config.json: Remove `NewlySymptomatic` from list of Custom_Individual_Events

## Python Script

`python run_scenarios.py -c optim_script_08jan2020.py --resample-method provided --samples resampled_parameter_sets_short.csv --output-dir test_1 --suite-name test_1 --table scenarios.csv`
