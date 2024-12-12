.class public interface abstract Ljavax/ws/rs/ext/ExceptionMapper;
.super Ljava/lang/Object;
.source "ExceptionMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract toResponse(Ljava/lang/Throwable;)Ljavax/ws/rs/core/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljavax/ws/rs/core/Response;"
        }
    .end annotation
.end method
