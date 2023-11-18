CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /scratch/yerong/.cache/pyllama/Llama-2-7b-hf \
    --template default \
    --do_train \
    --dataset police \
    --finetuning_type lora \
    --output_dir police \
    --per_device_train_batch_size 10 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 50 \
    --learning_rate 5e-5 \
    --num_train_epochs 100.0 \
    --fp16 \
    --lora_target q_proj,v_proj \
    --overwrite_output_dir
    # --quantization_bit 4
    # --checkpoint_dir 'harry_potter/checkpoint-1400' \
