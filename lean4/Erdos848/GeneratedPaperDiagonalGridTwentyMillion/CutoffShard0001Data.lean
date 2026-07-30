import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0040
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0041
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0042
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0043
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0050
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0051
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0062
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0063
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0064
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetChunk0065

namespace Erdos848.GeneratedPaperDiagonalGridTwentyMillion

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def cutoffShard0001Atoms : Fin 5 → TruncatedDiagonalAtom :=
  ![(.oddCell false ⟨3, by decide⟩), (.oddCell false ⟨4, by decide⟩), (.oddCell false ⟨8, by decide⟩), (.oddCell true ⟨5, by decide⟩), (.oddCell true ⟨6, by decide⟩)]

def cutoffShard0001Targets : Fin 5 → IndexedMarkerData :=
  ![{ limit := 19999999, values := (.node 13991 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_3Chunk0000 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_3Chunk0001) }, { limit := 19999999, values := (.node 13981 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_4Chunk0000 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_4Chunk0001) }, { limit := 19999999, values := (.node 13979 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_8Chunk0000 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_8Chunk0001) }, { limit := 19999999, values := (.node 13978 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_5Chunk0000 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_5Chunk0001) }, { limit := 19999999, values := (.node 13977 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_6Chunk0000 Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_6Chunk0001) }]

end Erdos848.GeneratedPaperDiagonalGridTwentyMillion
