set PACKER_LOG=1
set PACKER_LOG_PATH=%1.log.txt
call packer build -var-file=variables.json %1
