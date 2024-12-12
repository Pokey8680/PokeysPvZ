.class final Lcom/millennialmedia/google/gson/stream/JsonReader$1;
.super Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/millennialmedia/google/gson/stream/JsonReader;)V
    .locals 4
    .param p1, "reader"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1665
    instance-of v1, p1, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;

    if-eqz v1, :cond_0

    .line 1666
    check-cast p1, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;

    .end local p1    # "reader":Lcom/millennialmedia/google/gson/stream/JsonReader;
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1685
    :goto_0
    return-void

    .line 1669
    .restart local p1    # "reader":Lcom/millennialmedia/google/gson/stream/JsonReader;
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$000(Lcom/millennialmedia/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1670
    .local v0, "p":I
    if-nez v0, :cond_1

    .line 1671
    invoke-static {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$100(Lcom/millennialmedia/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1673
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1674
    const/16 v1, 0x9

    invoke-static {p1, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$002(Lcom/millennialmedia/google/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1675
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1676
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$002(Lcom/millennialmedia/google/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1677
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1678
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$002(Lcom/millennialmedia/google/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1680
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$200(Lcom/millennialmedia/google/gson/stream/JsonReader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->access$300(Lcom/millennialmedia/google/gson/stream/JsonReader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
