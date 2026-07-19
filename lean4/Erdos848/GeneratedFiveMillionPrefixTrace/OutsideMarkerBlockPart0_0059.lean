import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60416
  | _ => True

theorem outsideMarkerPart0_0059 : outsideMarkerPartValid0_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid0_0059 outsideHistoryChunk0059
  decide

def outsideMarkerPartValid1_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60544
  | _ => True

theorem outsideMarkerPart1_0059 : outsideMarkerPartValid1_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid1_0059 outsideHistoryChunk0059
  decide

def outsideMarkerPartValid2_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60672
  | _ => True

theorem outsideMarkerPart2_0059 : outsideMarkerPartValid2_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid2_0059 outsideHistoryChunk0059
  decide

def outsideMarkerPartValid3_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60800
  | _ => True

theorem outsideMarkerPart3_0059 : outsideMarkerPartValid3_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid3_0059 outsideHistoryChunk0059
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
