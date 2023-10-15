# Defining Variables
URL="https://www.tooplate.com/zip-templates/2132_clean_work.zip"
ZIP_NAME="2132_clean_work.zip"
FOLDER_NAME="2132_clean_work"
PROJECT_FOLDER="cleanImage"

echo "#########################################################"
echo "Updating Packages Lists & Installing unzip package"
echo "#########################################################"
sudo apt update && sudo apt install unzip -y

echo "#########################################################"
echo "Creating Folder"
echo "#########################################################"
mkdir "$PROJECT_FOLDER"
cd "$PROJECT_FOLDER"

echo "#########################################################"
echo "Fetching web files from tooplate server"
echo "#########################################################"
wget "$URL"

echo "#########################################################"
echo "Unzipping Fetched files & Removing the zip file"
echo "#########################################################"
unzip "$ZIP_NAME"
rm "$ZIP_NAME"
cd "$FOLDER_NAME"

echo "#########################################################"
echo "Creating tarball & Removing temporary files"
echo "#########################################################"
tar czvf clean.tar.gz *
mv clean.tar.gz ../
rm -rf "$FOLDER_NAME"
