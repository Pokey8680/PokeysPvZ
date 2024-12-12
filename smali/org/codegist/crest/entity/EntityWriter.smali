.class public interface abstract Lorg/codegist/crest/entity/EntityWriter;
.super Ljava/lang/Object;
.source "EntityWriter.java"


# virtual methods
.method public abstract getContentLength(Lorg/codegist/crest/io/Request;)I
.end method

.method public abstract getContentType(Lorg/codegist/crest/io/Request;)Ljava/lang/String;
.end method

.method public abstract writeTo(Lorg/codegist/crest/io/Request;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
