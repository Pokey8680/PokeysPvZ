.class public final Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/millennialmedia/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/google/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/millennialmedia/google/gson/Gson;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/millennialmedia/google/gson/Gson;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/google/gson/Gson;
    .param p2, "x1"    # Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    .line 63
    .local v2, "token":Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v3, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$millennialmedia$google$gson$stream$JsonToken:[I

    invoke-virtual {v2}, Lcom/millennialmedia/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 96
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 65
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginArray()V

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endArray()V

    .line 93
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 74
    :pswitch_1
    new-instance v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;-><init>()V

    .line 75
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginObject()V

    .line 76
    :goto_2
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    .line 80
    goto :goto_1

    .line 83
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :pswitch_3
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 89
    :pswitch_4
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 92
    :pswitch_5
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 93
    const/4 v0, 0x0

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/millennialmedia/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    .line 111
    .local v0, "typeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<Ljava/lang/Object;>;"
    instance-of v1, v0, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 113
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
