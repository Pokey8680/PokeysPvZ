.class public abstract Lorg/codegist/crest/serializer/TypeDeserializer;
.super Ljava/lang/Object;
.source "TypeDeserializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Deserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Deserializer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lorg/codegist/crest/serializer/TypeDeserializer;, "Lorg/codegist/crest/serializer/TypeDeserializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/codegist/crest/serializer/TypeDeserializer;, "Lorg/codegist/crest/serializer/TypeDeserializer<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p3, p4}, Lorg/codegist/crest/serializer/TypeDeserializer;->deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
