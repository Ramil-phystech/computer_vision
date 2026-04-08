DATA_DIR="cifar-10-batches-py"

if [ ! -d "$DATA_DIR" ]; then
  echo "Downloading CIFAR-10..."
  curl -L http://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz -o cifar-10-python.tar.gz
  
  echo "Extracting..."
  tar -xzvf cifar-10-python.tar.gz
  
  echo "Cleaning up..."
  rm cifar-10-python.tar.gz
else
  echo "Dataset already exists."
fi