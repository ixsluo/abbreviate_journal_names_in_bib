# format bib exported from Papers app into Nature style for
#
# Note: for arXiv papers, use `manualscript` type, and write "Preprint at https://arxiv.org/abs/xxx"
#       in `address` key.
#       This script will replace the exported "unpublished" type into "misc" type, and replace
#       "address" key into "howpublished" key.

if [[ -z $1 ]]; then
    echo "A file must be provided"
    exit 1
else
    # sed -i "" '/ abstract /d' $1
    sed -i "" '/ eprint /d' $1
    sed -i "" '/ keywords /d' $1
    sed -i "" '/ local-url /d' $1
    sed -i "" '/ note /d' $1
    sed -i "" '/ series /d' $1
    sed -i "" '/ url /d' $1
    sed -i "" '/ doi /d' $1
    sed -i "" 's/ address / howpublished /g' $1
    sed -i "" 's/@unpublished/@misc/g' $1
fi


