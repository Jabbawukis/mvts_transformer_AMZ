python src/main.py --output_dir experiments \
--comment "pretraining classification" \
--name SelfRegulationSCP2_pretraining \
--data_dir /vol/fob-vol4/mi17/christod/Zeitreihenanalyse/mvts_transformer_AMZ/Datasets/Classification/SelfRegulationSCP2 \
--data_class tsra \
--pattern TRAIN \
--val_ratio 0.2 \
--epochs 700 \
--lr 0.001 \
--optimizer RAdam \
--batch_size 128 \
--pos_encoding learnable \
--d_model 256 \
--dim_feedforward 512 \
--num_heads 8 \
--num_layers 3

python src/main.py --output_dir experiments \
--comment "finetune for classification" \
--name SelfRegulationSCP2_finetuned \
--data_dir /vol/fob-vol4/mi17/christod/Zeitreihenanalyse/mvts_transformer_AMZ/Datasets/Classification/SelfRegulationSCP2  \
--data_class tsra \
--pattern TRAIN \
--val_pattern TEST \
--epochs 100 \
--lr 0.001 \
--optimizer RAdam  \
--batch_size 128 \
--pos_encoding learnable \
--load_model model_best.pth \
--task classification \
--change_output \
--key_metric accuracy \
--d_model 256 \
--dim_feedforward 512 \
--num_heads 8 \
--num_layers 3
#################################################################################

python src/main.py --output_dir experiments \
--comment "pretraining classification" \
--name JapaneseVowels_pretraining \
--data_dir /vol/fob-vol4/mi17/christod/Zeitreihenanalyse/mvts_transformer_AMZ/Datasets/Classification/JapaneseVowels \
--data_class tsra \
--pattern TRAIN \
--val_ratio 0.2 \
--epochs 700 \
--lr 0.001 \
--optimizer RAdam \
--batch_size 128 \
--pos_encoding learnable \
--d_model 128 \
--dim_feedforward 256 \
--num_heads 8 \
--num_layers 3

python src/main.py --output_dir experiments \
--comment "finetune for classification" \
--name JapaneseVowels_finetuned \
--data_dir  \
--data_class tsra \
--pattern TRAIN \
--val_pattern TEST \
--epochs 100 \
--lr 0.001 \
--optimizer RAdam  \
--batch_size 128 \
--pos_encoding learnable \
--load_model model_best.pth \
--task classification \
--change_output \
--key_metric accuracy \
--d_model 128 \
--dim_feedforward 256 \
--num_heads 8 \
--num_layers 3
