# audio-attack
## To run the experiments

### 1. Requirements

- Python==3.8.5
- Numpy==1.21.0
- pytorch==1.9.0
- torchaudio==0.9.0

### 2. Datasets

- [LibriSpeech (clean test)](https://www.openslr.org/resources/12/test-clean.tar.gz)
- [TEDLIUM](https://lium.univ-lemans.fr/en/ted-lium2/)

### 3. Model
- [Pre-trained DeepSpeech (LSTM)](https://github.com/SeanNaren/deepspeech.pytorch/releases/download/V3.0/librispeech_pretrained_v3.ckpt
  ) (We extracted the model parameters.)
  
- [Pre-trained Wav2Letter](https://nvidia.github.io/OpenSeq2Seq/html/speech-recognition/wave2letter 
) (We extracted the model parameters.)

### 4. Run attack
1. `chmod +x run.sh` 
1. enter the project folder in terminal 
3. run `python run.sh <method> <coordinates a batch> <use TD> <dataset> <data path>`
- `<method>: [nes, fd, zoo, genetic]`
- `<coordinates a batch>: [200,500]`
- `<use TD>: [0,1]` 
- `<dataset>: [ls, ted]`
- `<dataset>:` path of the dataset


```
For example: run.sh nes 200 1 ls /path/to/ls
```



It takes around 10-12 hours to generate all examples. 

