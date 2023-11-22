#!/bin/bash

# Check if Ollama is already installed
if ! command -v ollama &> /dev/null
then
    echo "Installing Ollama..."
    curl https://ollama.ai/install.sh | sh
else
    echo "Ollama is already installed. Skipping installation."
fi

# Run Llama 2 model
echo "Running Llama 2 model..."
ollama run llama2

# API check
echo "Verifying API functionality..."
API_RESPONSE=$(curl -s http://localhost:11434/api/generate -d '{
  "model": "llama2",
  "prompt":"Why is the sky blue?"
}')

if [[ $API_RESPONSE == *"blue"* ]]; then
    echo "API is working properly."
else
    echo "API check failed."
    echo "Response was: $API_RESPONSE"
fi

# Clone the repository
echo "Cloning the Ollama-GardioUI repository..."
git clone https://github.com/bibekplus/Ollama-GardioUI.git
cd Ollama-GardioUI

# Create a virtual environment
echo "Creating a virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install dependencies from Pipfile
echo "Installing dependencies from Pipfile..."
pip install pipenv
pipenv install

echo "You can run main.py now"
