# Get path of project i.e. c:\dev\project1
$project_path = $PWD.Path

# Defaul python environment folder i.e. c:\dev\project1\.env
$pyenv_folder_name = ".env"
$project_py_path = $project_path + "\"+ $pyenv_folder_name

# Prompt in new environment
$pyenv_prompt = "EXCEL"

# Create python virtual environment with venv
& python -m venv .\$pyenv_folder_name --prompt $pyenv_prompt

# Activate project virtual environment
& $project_py_path"\scripts\activate.ps1"

# Update python tools & pip
python -m pip install --upgrade setuptools
python -m pip install --upgrade pip

# install project requirements
# pip install -r dev-requirements.txt
pip install -r requirements.txt
