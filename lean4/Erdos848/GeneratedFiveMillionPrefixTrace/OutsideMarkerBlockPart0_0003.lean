import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3072
  | _ => True

theorem outsideMarkerPart0_0003 : outsideMarkerPartValid0_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid0_0003 outsideHistoryChunk0003
  decide

def outsideMarkerPartValid1_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3200
  | _ => True

theorem outsideMarkerPart1_0003 : outsideMarkerPartValid1_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid1_0003 outsideHistoryChunk0003
  decide

def outsideMarkerPartValid2_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3328
  | _ => True

theorem outsideMarkerPart2_0003 : outsideMarkerPartValid2_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid2_0003 outsideHistoryChunk0003
  decide

def outsideMarkerPartValid3_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3456
  | _ => True

theorem outsideMarkerPart3_0003 : outsideMarkerPartValid3_0003 outsideHistoryChunk0003 := by
  unfold outsideMarkerPartValid3_0003 outsideHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
