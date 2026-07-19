import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0064

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65536
  | _ => True

theorem outsideMarkerPart0_0064 : outsideMarkerPartValid0_0064 outsideHistoryChunk0064 := by
  unfold outsideMarkerPartValid0_0064 outsideHistoryChunk0064
  decide

def outsideMarkerPartValid1_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65664
  | _ => True

theorem outsideMarkerPart1_0064 : outsideMarkerPartValid1_0064 outsideHistoryChunk0064 := by
  unfold outsideMarkerPartValid1_0064 outsideHistoryChunk0064
  decide

def outsideMarkerPartValid2_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65792
  | _ => True

theorem outsideMarkerPart2_0064 : outsideMarkerPartValid2_0064 outsideHistoryChunk0064 := by
  unfold outsideMarkerPartValid2_0064 outsideHistoryChunk0064
  decide

def outsideMarkerPartValid3_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65920
  | _ => True

theorem outsideMarkerPart3_0064 : outsideMarkerPartValid3_0064 outsideHistoryChunk0064 := by
  unfold outsideMarkerPartValid3_0064 outsideHistoryChunk0064
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
