# South Africa Model Debugging

Provenance of this model - who made it, what data were used to inform it, what features are part of it, what projects it has been used for, and whether it has been used recently - is currently unknown. Currently testing it to see if I can get it to run.


Changes that have been made

1. In simtools.ini: `exe_path = /gpfs/data/bershteynlab/EMOD/bin/EradicationMalaria-Ongoing_2023_01_05`
2. config.json:  `"Serialized_Population_Reading_Type": "NONE", "Serialized_Population_Writing_Type": "NONE",`
3. config.json: Remove `NewlySymptomatic` from list of Custom_Individual_Events
4. campaign_cpnLENACCEL.json remove `NewlySymptomatic` code block from campaign file

{
  " class": "BroadcastEvent",
  "Broadcast_Event": "NewlySymptomatic",
  "New_Property_Value": "NewlySymptomatic:Yes"
}

5. Fixed old version of `Delay_Distribution` -> `Delay_Period_Distribution` 

## Python Script

`python run_scenarios.py -c optim_script_08jan2020.py --resample-method provided --samples resampled_parameter_sets_short.csv --output-dir test_1 --suite-name test_1 --table scenarios.csv`
