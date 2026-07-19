import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0032

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32768
  | _ => True

theorem outsideMarkerPart0_0032 : outsideMarkerPartValid0_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid0_0032 outsideHistoryChunk0032
  decide

def outsideMarkerPartValid1_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32896
  | _ => True

theorem outsideMarkerPart1_0032 : outsideMarkerPartValid1_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid1_0032 outsideHistoryChunk0032
  decide

def outsideMarkerPartValid2_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33024
  | _ => True

theorem outsideMarkerPart2_0032 : outsideMarkerPartValid2_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid2_0032 outsideHistoryChunk0032
  decide

def outsideMarkerPartValid3_0032 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33152
  | _ => True

theorem outsideMarkerPart3_0032 : outsideMarkerPartValid3_0032 outsideHistoryChunk0032 := by
  unfold outsideMarkerPartValid3_0032 outsideHistoryChunk0032
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
