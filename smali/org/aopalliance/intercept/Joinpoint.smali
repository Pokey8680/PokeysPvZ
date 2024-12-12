.class public interface abstract Lorg/aopalliance/intercept/Joinpoint;
.super Ljava/lang/Object;
.source "Joinpoint.java"


# virtual methods
.method public abstract getStaticPart()Ljava/lang/reflect/AccessibleObject;
.end method

.method public abstract getThis()Ljava/lang/Object;
.end method

.method public abstract proceed()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
