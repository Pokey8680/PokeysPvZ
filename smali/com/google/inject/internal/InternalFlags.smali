.class public Lcom/google/inject/internal/InternalFlags;
.super Ljava/lang/Object;
.source "InternalFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/inject/internal/InternalFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/InternalFlags;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getIncludeStackTraceOption()Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    .locals 5

    .prologue
    .line 40
    const-string v2, "guice_include_stack_traces"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "flag":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    .line 49
    :goto_0
    return-object v2

    .line 42
    :cond_1
    invoke-static {v1}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->valueOf(Ljava/lang/String;)Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/inject/internal/InternalFlags;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid flag value for guice_include_stack_traces. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Values must be one of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->values()[Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    goto :goto_0
.end method
