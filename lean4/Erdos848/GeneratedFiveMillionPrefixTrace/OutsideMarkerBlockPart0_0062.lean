import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0062

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63488
  | _ => True

theorem outsideMarkerPart0_0062 : outsideMarkerPartValid0_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid0_0062 outsideHistoryChunk0062
  decide

def outsideMarkerPartValid1_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63616
  | _ => True

theorem outsideMarkerPart1_0062 : outsideMarkerPartValid1_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid1_0062 outsideHistoryChunk0062
  decide

def outsideMarkerPartValid2_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63744
  | _ => True

theorem outsideMarkerPart2_0062 : outsideMarkerPartValid2_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid2_0062 outsideHistoryChunk0062
  decide

def outsideMarkerPartValid3_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63872
  | _ => True

theorem outsideMarkerPart3_0062 : outsideMarkerPartValid3_0062 outsideHistoryChunk0062 := by
  unfold outsideMarkerPartValid3_0062 outsideHistoryChunk0062
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
