.class public final Lcom/millennialmedia/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/internal/Streams$1;,
        Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static parse(Lcom/millennialmedia/google/gson/stream/JsonReader;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 3
    .param p0, "reader"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v1, 0x1

    .line 47
    .local v1, "isEmpty":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    .line 48
    const/4 v1, 0x0

    .line 49
    sget-object v2, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/millennialmedia/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 56
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 56
    sget-object v2, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Lcom/millennialmedia/google/gson/stream/MalformedJsonException;
    new-instance v2, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 62
    .end local v0    # "e":Lcom/millennialmedia/google/gson/stream/MalformedJsonException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    .locals 1
    .param p0, "element"    # Lcom/millennialmedia/google/gson/JsonElement;
    .param p1, "writer"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2
    .param p0, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 80
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    .end local p0    # "appendable":Ljava/lang/Appendable;
    :goto_0
    return-object p0

    .restart local p0    # "appendable":Ljava/lang/Appendable;
    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/millennialmedia/google/gson/internal/Streams$1;)V

    move-object p0, v0

    goto :goto_0
.end method