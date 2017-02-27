A MCFileTreeFossilRepository  auto-commits  to Fossil when saving a package into a FossilFileTree repository. 

OS shell prompt:
% mkdir vcs repo
% cd vcs
% fossil init mypharoapp.fossil
% cd ../repo
% fossil open ../vcs/mypharoapp.fossil

Then, in Pharo, create a fossilfiletree repository in the directory  repo/.