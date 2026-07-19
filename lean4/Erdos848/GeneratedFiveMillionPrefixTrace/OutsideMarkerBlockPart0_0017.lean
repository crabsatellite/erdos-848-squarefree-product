import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0017

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17408
  | _ => True

theorem outsideMarkerPart0_0017 : outsideMarkerPartValid0_0017 outsideHistoryChunk0017 := by
  unfold outsideMarkerPartValid0_0017 outsideHistoryChunk0017
  decide

def outsideMarkerPartValid1_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17536
  | _ => True

theorem outsideMarkerPart1_0017 : outsideMarkerPartValid1_0017 outsideHistoryChunk0017 := by
  unfold outsideMarkerPartValid1_0017 outsideHistoryChunk0017
  decide

def outsideMarkerPartValid2_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17664
  | _ => True

theorem outsideMarkerPart2_0017 : outsideMarkerPartValid2_0017 outsideHistoryChunk0017 := by
  unfold outsideMarkerPartValid2_0017 outsideHistoryChunk0017
  decide

def outsideMarkerPartValid3_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17792
  | _ => True

theorem outsideMarkerPart3_0017 : outsideMarkerPartValid3_0017 outsideHistoryChunk0017 := by
  unfold outsideMarkerPartValid3_0017 outsideHistoryChunk0017
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
