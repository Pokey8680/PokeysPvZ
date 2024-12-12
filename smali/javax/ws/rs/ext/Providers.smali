.class public interface abstract Ljavax/ws/rs/ext/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# virtual methods
.method public abstract getContextResolver(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/ContextResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljavax/ws/rs/core/MediaType;",
            ")",
            "Ljavax/ws/rs/ext/ContextResolver",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getExceptionMapper(Ljava/lang/Class;)Ljavax/ws/rs/ext/ExceptionMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/ws/rs/ext/ExceptionMapper",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getMessageBodyReader(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/MessageBodyReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")",
            "Ljavax/ws/rs/ext/MessageBodyReader",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getMessageBodyWriter(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/MessageBodyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")",
            "Ljavax/ws/rs/ext/MessageBodyWriter",
            "<TT;>;"
        }
    .end annotation
.end method
