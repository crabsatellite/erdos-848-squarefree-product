import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0014

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14336
  | _ => True

theorem outsideMarkerPart0_0014 : outsideMarkerPartValid0_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid0_0014 outsideHistoryChunk0014
  decide

def outsideMarkerPartValid1_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14464
  | _ => True

theorem outsideMarkerPart1_0014 : outsideMarkerPartValid1_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid1_0014 outsideHistoryChunk0014
  decide

def outsideMarkerPartValid2_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14592
  | _ => True

theorem outsideMarkerPart2_0014 : outsideMarkerPartValid2_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid2_0014 outsideHistoryChunk0014
  decide

def outsideMarkerPartValid3_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14720
  | _ => True

theorem outsideMarkerPart3_0014 : outsideMarkerPartValid3_0014 outsideHistoryChunk0014 := by
  unfold outsideMarkerPartValid3_0014 outsideHistoryChunk0014
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
