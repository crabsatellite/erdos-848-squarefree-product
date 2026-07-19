import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0053

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54272
  | _ => True

theorem outsideMarkerPart0_0053 : outsideMarkerPartValid0_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid0_0053 outsideHistoryChunk0053
  decide

def outsideMarkerPartValid1_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54400
  | _ => True

theorem outsideMarkerPart1_0053 : outsideMarkerPartValid1_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid1_0053 outsideHistoryChunk0053
  decide

def outsideMarkerPartValid2_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54528
  | _ => True

theorem outsideMarkerPart2_0053 : outsideMarkerPartValid2_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid2_0053 outsideHistoryChunk0053
  decide

def outsideMarkerPartValid3_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54656
  | _ => True

theorem outsideMarkerPart3_0053 : outsideMarkerPartValid3_0053 outsideHistoryChunk0053 := by
  unfold outsideMarkerPartValid3_0053 outsideHistoryChunk0053
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
