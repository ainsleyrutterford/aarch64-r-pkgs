file="packages.txt"
packages=`cat $file`
for pkg in $packages
do
cat > package_scripts/${pkg}.r <<EOT
install.packages('${pkg}', repos="https://www.stats.bris.ac.uk/R/")
library('${pkg}')
EOT
done
