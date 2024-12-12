.class public Lcom/inmobi/commons/internal/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/Log$a;,
        Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sput-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/CommonsConfig;->getLogLevelConfig()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 48
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/inmobi/commons/internal/Log$a;->a:[I

    sget-object v1, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-static {p0, p1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLogLevel()Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-object v0
.end method

.method public static getLogLevelValue(J)Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 30
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    goto :goto_0
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/CommonsConfig;->getLogLevelConfig()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/CommonsConfig;->getLogLevelConfig()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_1
    return-void
.end method

.method public static setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V
    .locals 2

    .prologue
    .line 37
    sput-object p0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    .line 38
    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    .line 41
    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/CommonsConfig;->getLogLevelConfig()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 71
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/inmobi/commons/internal/Log$a;->a:[I

    sget-object v1, Lcom/inmobi/commons/internal/Log;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-static {p0, p1}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
