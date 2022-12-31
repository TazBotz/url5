if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TazBotz/url5.git /url5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /url5
fi
cd /url5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
