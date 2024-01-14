#python3 src/main.py --output_dir experiments \
#--comment "classification from Scratch" \
#--name Abnormal_fromScratch \
#--records_file Classification_records.xls \
#--data_dir Datasets/Classification/AbnormalHeartbeat/ \
#--data_class tsra \
#--pattern TRAIN \
#--val_pattern TEST \
#--epochs 400 \
#--lr 0.001 \
#--optimizer RAdam  \
#--pos_encoding learnable  \
#--task classification \
#--key_metric accuracy

# --output_dir ../experiments --comment "classification from Scratch" --name Sp_Arab_Digits_fromScratch --records_file Classification_records.xls --data_dir ../Datasets/Classification/SpokenArabicDigits/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 400 --lr 0.001 --optimizer RAdam --pos_encoding learnable --task classification --key_metric accuracy

python3 src/main.py --output_dir experiments \
--comment "classification from Scratch" \
--name Sp_Arab_Digits_fromScratch \
--records_file Classification_records.xls \
--data_dir Datasets/Classification/SpokenArabicDigits/ \
--data_class tsra \
--pattern TRAIN \
--val_pattern TEST \
--epochs 400 \
--lr 0.001 \
--optimizer RAdam  \
--pos_encoding learnable  \
--task classification \
--key_metric accuracy