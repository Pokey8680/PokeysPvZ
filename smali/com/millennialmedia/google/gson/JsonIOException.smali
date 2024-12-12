.class public final Lcom/millennialmedia/google/gson/JsonIOException;
.super Lcom/millennialmedia/google/gson/JsonParseException;
.source "JsonIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method
