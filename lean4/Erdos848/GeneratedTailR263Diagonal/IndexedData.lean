import Erdos848.TailR263DiagonalChecker
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0001
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0002
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0003
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0004
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0005
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0006
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0007
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0008
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0009
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0010
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0011
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0012
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0013
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0014
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0015
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0016
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0017
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0018
import Erdos848.GeneratedTailR263Diagonal.MarkerLowTwoChunk0019
import Erdos848.GeneratedTailR263Diagonal.MarkerCell0Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell1Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell2Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell3Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell4Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell5Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell6Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell7Chunk0000
import Erdos848.GeneratedTailR263Diagonal.MarkerCell8Chunk0000

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def lowTwoMarker : IndexedMarkerData :=
  { limit := 9999999
    values :=
      (.node 157249 (.node 81920 (.node 40960 (.node 16384 markerLowTwoChunk0000 markerLowTwoChunk0001) (.node 24576 markerLowTwoChunk0002 (.node 16384 markerLowTwoChunk0003 markerLowTwoChunk0004))) (.node 40960 (.node 16384 markerLowTwoChunk0005 markerLowTwoChunk0006) (.node 24576 markerLowTwoChunk0007 (.node 16384 markerLowTwoChunk0008 markerLowTwoChunk0009)))) (.node 75329 (.node 40960 (.node 16384 markerLowTwoChunk0010 markerLowTwoChunk0011) (.node 24576 markerLowTwoChunk0012 (.node 16384 markerLowTwoChunk0013 markerLowTwoChunk0014))) (.node 34369 (.node 16384 markerLowTwoChunk0015 markerLowTwoChunk0016) (.node 17985 markerLowTwoChunk0017 (.node 9793 markerLowTwoChunk0018 markerLowTwoChunk0019))))) }

def evenTwoCellMarker0 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell0Chunk0000 }

def evenTwoCellMarker1 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell1Chunk0000 }

def evenTwoCellMarker2 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell2Chunk0000 }

def evenTwoCellMarker3 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell3Chunk0000 }

def evenTwoCellMarker4 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell4Chunk0000 }

def evenTwoCellMarker5 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell5Chunk0000 }

def evenTwoCellMarker6 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell6Chunk0000 }

def evenTwoCellMarker7 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell7Chunk0000 }

def evenTwoCellMarker8 : IndexedMarkerData :=
  { limit := 9999999
    values :=
      markerCell8Chunk0000 }

def evenTwoCellMarkers : Fin 9 → IndexedMarkerData :=
  ![evenTwoCellMarker0, evenTwoCellMarker1, evenTwoCellMarker2, evenTwoCellMarker3, evenTwoCellMarker4, evenTwoCellMarker5, evenTwoCellMarker6, evenTwoCellMarker7, evenTwoCellMarker8]

def targetMarkers : TailR263DiagonalTarget → IndexedMarkerData
  | .lowTwo => lowTwoMarker
  | .evenTwoCell residue => evenTwoCellMarkers residue

end Erdos848.GeneratedTailR263Diagonal
