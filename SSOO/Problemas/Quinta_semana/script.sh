
drive_space() {

  I = 0
  LIST =
  while ["$I" -]; do
    echo "$I"
    I = $ ((I + 1))
    LIST = "$LIST E:$I"
  done
  old_ifs = IFS

(
  IFS = :
  for ITEM in A B C D E; do
    echo $ITEM
  done
)
  #until ls -l; do

  #done
}