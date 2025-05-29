# Update package list
sudo apt-get update

# Install software-properties-common for add-apt-repository command
sudo apt-get install -y software-properties-common

# Add deadsnakes PPA for newer Python versions
sudo add-apt-repository -y ppa:deadsnakes/ppa

# Update package list again after adding new repo
sudo apt-get update

# Install Python 3.10, venv module, and pip
sudo apt-get install -y python3.10 python3.10-venv python3-pip

# Check Python 3.10 version to confirm install
python3.10 --version

# Check pip version (usually for system default Python)
pip3 --version

# Check pip for Python 3.10 explicitly (recommended)
python3.10 -m pip --version

# Update package list before Java install
sudo apt update

# Install fontconfig (needed for Jenkins GUI fonts) and OpenJDK 21 runtime
sudo apt install -y fontconfig openjdk-21-jre

# Check Java version
java -version

# Download and add Jenkins GPG key for secure package verification
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repository to apt sources list
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package list after adding Jenkins repo
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins status to confirm running
sudo systemctl status jenkins
