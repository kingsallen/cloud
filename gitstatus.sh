function getdir(){
     git pull -p
     for element in `ls $1`
      do  
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then 
            echo $dir_or_file	    
            cd $element
	    git status
            cd ..
        fi  
      done
}
root_dir="."
getdir $root_dir
