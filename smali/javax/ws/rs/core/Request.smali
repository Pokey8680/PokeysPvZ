.class public interface abstract Ljavax/ws/rs/core/Request;
.super Ljava/lang/Object;
.source "Request.java"


# virtual methods
.method public abstract evaluatePreconditions()Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract evaluatePreconditions(Ljava/util/Date;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract evaluatePreconditions(Ljava/util/Date;Ljavax/ws/rs/core/EntityTag;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract evaluatePreconditions(Ljavax/ws/rs/core/EntityTag;)Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract selectVariant(Ljava/util/List;)Ljavax/ws/rs/core/Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/ws/rs/core/Variant;",
            ">;)",
            "Ljavax/ws/rs/core/Variant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
