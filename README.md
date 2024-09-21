# Running the test

Copy the latest version of `retrace-record-replay` to `.`
```
cp -r ../retrace-record-replay/ .
```

Delete the .git folder
```
rm -rf ./retrace-record-replay/.git
```

Build the Docker image
```
./build.sh
```

Create the `retrace_data` folder
```
mkdir ./retrace_data
```

Record
```
./record.sh
```

This will run `/src/main.py` and save the recording to `/retrace_data`

Replay
```
./replay.sh
```


# Suggestions

- minimal hello world example python file that checks if the env vars are correct and gives helpful messages if retrace couldn't be loaded because the path is incorrect
- 'Set the environment variables needed for Retrace' section should explain the possible values of all env vars
- replay
  - cannot find hash filenames in record folder, is the documentation outdated?
  - add a cmd line tool similar to retracereplay that lists the available recoridngs
  - on replay the documentation doesn't explain how the replay identifies the source files. is it by file name?
  - why do I need to be in a specific folder to replay if the recording contains cwd?
  - documentation doesn't say anything about RETRACE_RUN_DIR which is confusng because I don't know how to select the run
- RETRACE_RUN_DIR should be just the subdir after RETRACE_OUTOUT_DIR, not a full path. and therefore should be renamed to RETRACE_RUN_ID
- RETRACE_EXECUTION_ID should be renamed to RETRACE_PROCESS_ID
- why the latest() method in retracereplay gets the latest dircetory instead of using the latest symlink?
- if I have any args after python and before the .py file path, for example -u, the retracereplay cannot parse the script to replay.
