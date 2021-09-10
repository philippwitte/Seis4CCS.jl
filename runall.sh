#!/bin/bash

mkdir $RESULTDIR

mkdir $MODELDIR
cd $MODELDIR
wget https://www.dropbox.com/s/n2cc5nntameh4rg/Compass_tti_625m.jld2
cd $APPDIR

mkdir $DATADIR
cd $DATADIR
wget https://www.dropbox.com/s/radan2hxgb5jnc5/Conc.jld2

cd $APPDIR/scripts

julia ConcToV.jl --nv $L
julia GenData.jl --nv $L --nsrc $nsrc
julia JRM.jl --nv $L
