.class public interface abstract Lorg/codegist/crest/serializer/Deserializer;
.super Ljava/lang/Object;
.source "Deserializer.java"


# virtual methods
.method public abstract deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
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
.end method
