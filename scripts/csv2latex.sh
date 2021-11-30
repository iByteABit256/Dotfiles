#!/bin/sh
# Convert table to latex
file=$(echo $1 | sed 's/.\///g')
name=$(echo $file | cut -d '.' -f1)

cat $file | sed \
        -e 's:&:\\&:g' \
            -e 's:,:\t\&\t:g' \
                -e 's:"::g' \
                    -e 's/_/\\_/g'  \
                        -e 's:$:\t\\\\:g' > $name.txt

# Latex table syntax
ed -s $name.txt << END
1i
\begin{tabular}{llll}
\toprule
.
+1a
\midrule
.
\$a
\hline
\end{tabular}
.
wq
END
