# Sentence Transformer Batch Transform

This snippet allows using SentenceTransformer model with SageMaker batch transform. It works by providing additional
file (inference.py), which overloads the default code of the SageMaker Batch Transform container. The script needs to
be added to the archive, where the model is located. Model used in the example is `microsoft/MiniLM-L12-H384-uncased`,
which is the smallest sentence  transformer model available, but it can be replaced with any model from available ones. 

## Creating the Model

Pull the model from HuggingFace:

```bash
git lfs install
git clone https://huggingface.co/sentence-transformers/{{MODEL_NAME}}
```

Add inference script and requirements file (optionally)

```bash
cp inference.py {{MODEL_NAME}}
cp requirement.txt {{MODEL_NAME}}
```

Create archive and store it on S3:

```bash
cd {{MODEL_NAME}}
tar zcvf {{MODEL_NAME}}.tar.gz *
aws s3 cp {{MODEL_NAME}}.tar.gz s3://bucket/models/
```

## Resources

| Name                        | Type              | Link |
|-----------------------------|-------------------|------|
| Sentence Transformers       | Documentation     | [LINK](https://www.sbert.net/) |
| Sentence Transformers       | Documentation     | [LINK](https://huggingface.co/sentence-transformers) |
| AWS SageMaker with Custom Script | Blog         | [LINK](https://aws.amazon.com/blogs/machine-learning/hugging-face-on-amazon-sagemaker-bring-your-own-scripts-and-data/) |
| AWS SageMaker SDK           | Documentation     | [LINK](https://sagemaker.readthedocs.io/en/stable/) |
