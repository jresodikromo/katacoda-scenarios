pip install --upgrade pip
git clone https://github.com/kavgan/word_cloud 
cd word_cloud && pip install -e . 
cp  ~/word_cloud/*clouds.ipynb  ~/work/Example_word_clouds.ipynb
pip install plotly 
pip install matplotlib_venn 
pip install cufflinks 
pip install gender-guesser
pip install -U nltk
# apparently the base image already contain ipywidgets
#pip install ipywidgets
pip install pyarrow
# word_cloud has a fix dependency on an older version of pandas - and when installed will overwrite the current one that comes in the Docker image
# here I am force installing the latest pandas - required by the widgets notebook; word_cloud will still work
pip install --upgrade pandas
# apparently the base image already contain ipywidgets
#jupyter nbextension enable --py widgetsnbextension

# perhaps clone a github repo into /home/jovyan/work
cd ~/work
git clone http://bitbucket.org/hrojas/learn-pandas
git clone https://github.com/WillKoehrsen/Data-Analysis
cp -R Data-Analysis/widgets ~/work
# next follows a round about way to get a single file into the running container
mkdir temp
cd temp
git clone https://github.com/lucasjellema/katacoda-scenarios
cp katacoda-scenarios/jupyter-notebook/assets/introPythonForDataAnalysis.ipynb ~/work
# adding notebook to play with ipywidgets


cd ~/work
rm -Rf temp 