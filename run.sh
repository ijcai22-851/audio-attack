

function gen_audio() {
    attack_method=$1
    samples_per_draw=$2
    use_TD=$3
    dataset=$4
    data_path=$5

    python run_attack.py --method=$attack_method --samples_per_draw=$samples_per_draw --use_TD=$use_TD --dataset=$dataset --data_path=$data_path
    python reconstruct_audio.py --method=$attack_method --samples_per_draw=$samples_per_draw --use_TD=$use_TD --dataset=$dataset --data_path=$data_path
}


  attack_method=$1
  samples_per_draw=$2
  use_TD=$3
  dataset=$4
  data_path=$5
gen_audio $attack_method $samples_per_draw $use_TD $dataset $data_path