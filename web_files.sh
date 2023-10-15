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
mv clean.tar.gz ../../
cd ..
rm -rf "$FOLDER_NAME"
cd ..
rm -rf "$PROJECT_FOLDER"
