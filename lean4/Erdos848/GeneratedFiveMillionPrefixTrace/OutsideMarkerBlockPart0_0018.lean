import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0018

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18432
  | _ => True

theorem outsideMarkerPart0_0018 : outsideMarkerPartValid0_0018 outsideHistoryChunk0018 := by
  unfold outsideMarkerPartValid0_0018 outsideHistoryChunk0018
  decide

def outsideMarkerPartValid1_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18560
  | _ => True

theorem outsideMarkerPart1_0018 : outsideMarkerPartValid1_0018 outsideHistoryChunk0018 := by
  unfold outsideMarkerPartValid1_0018 outsideHistoryChunk0018
  decide

def outsideMarkerPartValid2_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18688
  | _ => True

theorem outsideMarkerPart2_0018 : outsideMarkerPartValid2_0018 outsideHistoryChunk0018 := by
  unfold outsideMarkerPartValid2_0018 outsideHistoryChunk0018
  decide

def outsideMarkerPartValid3_0018 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18816
  | _ => True

theorem outsideMarkerPart3_0018 : outsideMarkerPartValid3_0018 outsideHistoryChunk0018 := by
  unfold outsideMarkerPartValid3_0018 outsideHistoryChunk0018
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
