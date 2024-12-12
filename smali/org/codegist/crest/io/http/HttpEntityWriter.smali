.class interface abstract Lorg/codegist/crest/io/http/HttpEntityWriter;
.super Ljava/lang/Object;
.source "HttpEntityWriter.java"


# virtual methods
.method public abstract getContentLength()I
.end method

.method public abstract writeEntityTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
