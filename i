# source this file

i ()  { #
          # in shell script
	  # . i
          # i HOST.file
          #   source `daint.file' on daint and `local.file' on anything else
    . `i0 "$1"`
}

i0 () {
    awk '
       BEGIN {
	   h = ARGV[1]; f = ARGV[2]
	   gsub(/HOST/, h, f)
	   print f
       }
    ' "`h0`" "$1"
}
