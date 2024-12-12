.class public interface abstract Lcom/millennialmedia/android/NVASpeechKit$Listener;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioLevelUpdate(D)V
.end method

.method public abstract onAudioSampleUpdate(D)V
.end method

.method public abstract onCustomWordsAdded()V
.end method

.method public abstract onCustomWordsDeleted()V
.end method

.method public abstract onError()V
.end method

.method public abstract onResults()V
.end method

.method public abstract onStateChange(Lcom/millennialmedia/android/NVASpeechKit$State;)V
.end method
