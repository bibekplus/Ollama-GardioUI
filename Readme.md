# Project Setup Instructions

This project is built upon the [Ollama](https://ollama.ai/) framework. Please ensure you have Ollama installed locally before proceeding.

## Installation Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/bibekplus/Ollama-GardioUI
   ```

2. **Create a Virtual Environment**
   ```bash
   python3 -m venv venv
   ```

3. **Install Dependencies**
   ```bash
   pipenv install --skip-lock
   ```

4. **Configure the Model in `main.py`**
   Modify the `main.py` file to select the specific model you wish to use:
   ```python
   import requests, json
   import gradio as gr
   model = 'codellama'
   ```

5. **Run the Application**
   ```bash
   python main.py
   ```

## Quick Installation

Alternatively, you can set up the project quickly using the following command:
```bash
curl -sSL https://github.com/bibekplus/Ollama-GardioUI/raw/main/install.sh | sh
```


