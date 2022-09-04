

wget https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh

bash Mambaforge-Linux-x86_64.sh << EOF

yes
${HOME}/automamba
no
EOF

conda deactivate

source ${HOME}/automamba/bin/activate

wget -O env-regcm5.yml https://raw.githubusercontent.com/jesusff/binder-regcm5/main/environment.yml

mamba env create -f env-regcm5.yml

rm Mambaforge-Linux-x86_64.sh env-regcm5.yml
