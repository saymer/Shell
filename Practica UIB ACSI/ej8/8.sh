#Ver usuario y memoria virtual usada por cada proceso de ellos

#Print all process with his user (non-zero value of VSZ)
ps axo user,vsz | awk '$2!=0 {print}'
