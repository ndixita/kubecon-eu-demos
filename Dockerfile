FROM gcr.io/deeplearning-platform-release/tf-cpu.1-15
COPY cloud-samples-final /train
WORKDIR /train/tensorflow/standard/mnist
CMD ["python", "-m", "trainer.task", "--train-file=/train/data/train-images-idx3-ubyte.gz", "--train-labels-file=/train/data/train-labels-idx1-ubyte.gz", "--test-file=/train/data/train-images-idx3-ubyte.gz", "--test-labels-file=/train/data/train-labels-idx1-ubyte.gz", "--job-dir=/tmp/mnist"]
