export RAPIDAPIKEY=""
export OUTPUT_DIR="data/toolllama/pipeline_answer/davinci_dfs"
export OPENAI_KEY=""

mkdir $OUTPUT_DIR
python toolbench/inference/qa_pipeline.py \
    --tool_root_dir toolenv/tools/ \
    --backbone_model davinci \
    --openai_key $OPENAI_KEY \
    --max_observation_length 1024 \
    --method DFS_woFilter_w2 \
    --input_query_file data/query/inference_query_demo.json \
    --output_answer_file $OUTPUT_DIR \
    --rapidapi_key $RAPIDAPIKEY
