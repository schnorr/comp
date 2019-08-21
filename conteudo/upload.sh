FILES=$(find | grep org$ | grep -v README | sed s/org$/pdf/)
DESTDIR=public_html
mkdir -p $DESTDIR
for file in $FILES; do
    NAME=$DESTDIR/$(echo $file | sed -e 's/\.\///' -e 's/\//_/g')
    cp $file $NAME
done

COMMAND="rsync -rv --progress $DESTDIR/* html.inf.ufrgs.br:./public_html/inf1147/"
echo $COMMAND
eval $COMMAND
