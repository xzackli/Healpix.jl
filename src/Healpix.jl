module Healpix
###
export nsideok, nside2pixarea, nside2resol
export Resolution, nside2npix, npix2nside
export ang2pixNest, ang2pixRing, pix2angNest, pix2angRing
export vec2pixNest, vec2pixRing, pix2vecNest, pix2vecRing
export pix2ringpos
export Order, RingOrder, NestedOrder, AbstractHealpixMap, HealpixMap, PolarizedHealpixMap
export ang2vec, vec2ang, ang2pix, pix2ang
export readMapFromFITS, savePixelsToFITS, saveToFITS, conformables
export ringWeightPath, readWeightRing
export pixelWindowPath, readPixelWindowT, readPixelWindowP
export Alm, numberOfAlms, almIndexL0, almIndex, readAlmFromFITS
export map2alm, alm2map, map2alm!, alm2map!, alm2cl, pixwin
export getringinfo!, getringinfo, getinterpolRing
export pix2xyfRing, xyf2pixRing, pix2xyfNest, xyf2pixNest
export pix2zphiNest, pix2zphiRing, ringAbove
export ring2nest, nest2ring, ring2nest!, nest2ring!, udgrade

using LazyArtifacts
import CFITSIO

import Libsharp
import Base: getindex, setindex!

const UNSEEN = -1.6375e+30

include("nside.jl")
include("math.jl")
include("datatables.jl")
include("resolution.jl")
include("pixelfunc.jl")
include("interp.jl")
include("xyf.jl")
include("map.jl")
include("polarizedmap.jl")
include("map_io.jl")
include("conformables.jl")
include("weights.jl")
include("pixelwindow.jl")
include("map_pixelfunc.jl")
include("projections.jl")
include("alm.jl")
include("sphtfunc.jl")
include("mapmaking.jl")

end
