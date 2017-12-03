function f = sumSurrounding(M,u,v)
    f = M(u-1,v-1)+M(u-1,v)+M(u-1,v+1)+M(u,v+1)+M(u+1,v+1)+M(u+1,v)+M(u+1,v-1)+M(u,v-1);       
end