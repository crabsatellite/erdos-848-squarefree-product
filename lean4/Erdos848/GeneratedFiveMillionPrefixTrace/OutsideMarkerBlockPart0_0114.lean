import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116736
  | _ => True

theorem outsideMarkerPart0_0114 : outsideMarkerPartValid0_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid0_0114 outsideHistoryChunk0114
  decide

def outsideMarkerPartValid1_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116864
  | _ => True

theorem outsideMarkerPart1_0114 : outsideMarkerPartValid1_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid1_0114 outsideHistoryChunk0114
  decide

def outsideMarkerPartValid2_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116992
  | _ => True

theorem outsideMarkerPart2_0114 : outsideMarkerPartValid2_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid2_0114 outsideHistoryChunk0114
  decide

def outsideMarkerPartValid3_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117120
  | _ => True

theorem outsideMarkerPart3_0114 : outsideMarkerPartValid3_0114 outsideHistoryChunk0114 := by
  unfold outsideMarkerPartValid3_0114 outsideHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
