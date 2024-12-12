.class final Lcom/millennialmedia/android/MMConversionTracker$1;
.super Ljava/lang/Object;
.source "MMConversionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$extraParams:Ljava/util/TreeMap;

.field final synthetic val$goalId:Ljava/lang/String;

.field final synthetic val$installTimeUTC:J

.field final synthetic val$isFirstLaunch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$goalId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$isFirstLaunch:Z

    iput-wide p3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$installTimeUTC:J

    iput-object p5, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$extraParams:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 102
    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 104
    .local v1, "tc":Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$goalId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$isFirstLaunch:Z

    iget-wide v4, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$installTimeUTC:J

    iget-object v6, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$extraParams:Ljava/util/TreeMap;

    invoke-virtual/range {v1 .. v6}, Lcom/millennialmedia/android/HttpGetRequest;->trackConversion(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MMConversionTracker"

    const-string v3, "Problem doing conversion tracking."

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
