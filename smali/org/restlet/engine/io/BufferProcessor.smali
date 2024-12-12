.class public interface abstract Lorg/restlet/engine/io/BufferProcessor;
.super Ljava/lang/Object;
.source "BufferProcessor.java"


# virtual methods
.method public varargs abstract canLoop(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
.end method

.method public varargs abstract couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
.end method

.method public varargs abstract onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onFillEof()V
.end method

.method public abstract postProcess(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract preProcess(I[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
