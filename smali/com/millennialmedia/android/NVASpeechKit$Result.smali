.class public Lcom/millennialmedia/android/NVASpeechKit$Result;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public final resultScore:I

.field public final resultString:Ljava/lang/String;

.field final synthetic this$0:Lcom/millennialmedia/android/NVASpeechKit;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/NVASpeechKit;Ljava/lang/String;D)V
    .locals 1
    .param p2, "resultString"    # Ljava/lang/String;
    .param p3, "resultScore"    # D

    .prologue
    .line 96
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$Result;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/millennialmedia/android/NVASpeechKit$Result;->resultString:Ljava/lang/String;

    .line 98
    double-to-int v0, p3

    iput v0, p0, Lcom/millennialmedia/android/NVASpeechKit$Result;->resultScore:I

    .line 99
    return-void
.end method


# virtual methods
.method public getResultScore()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/millennialmedia/android/NVASpeechKit$Result;->resultScore:I

    return v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$Result;->resultString:Ljava/lang/String;

    return-object v0
.end method
