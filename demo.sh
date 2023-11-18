python src/cli_demo_police.py \
  --model_name_or_path /scratch/yerong/.cache/pyllama/Llama-2-7b-hf \
  --top_p 0.25 \
  --temperature 0.95 \
  --template default \
  --finetuning_type lora \
  --checkpoint_dir police/checkpoint-1100